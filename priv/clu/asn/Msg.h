/*
 * Generated by asn1c-0.9.28 (http://lionet.info/asn1c)
 * From ASN.1 module "ROSTER"
 * 	found in "/Users/proger/cg/chat/src/ROSTER.asn1"
 */

#ifndef	_Msg_H_
#define	_Msg_H_


#include <asn_application.h>

/* Including external dependencies */
#include "N2O.h"
#include "Ack.h"
#include "Nak.h"
#include "Pub.h"
#include "Sub.h"
#include <constr_CHOICE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum Msg_PR {
	Msg_PR_NOTHING,	/* No components present */
	Msg_PR_n2o,
	Msg_PR_ack,
	Msg_PR_nak,
	Msg_PR_pub,
	Msg_PR_sub
} Msg_PR;

/* Msg */
typedef struct Msg {
	Msg_PR present;
	union Msg_u {
		N2O_t	 n2o;
		Ack_t	 ack;
		Nak_t	 nak;
		Pub_t	 pub;
		Sub_t	 sub;
	} choice;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} Msg_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_Msg;

#ifdef __cplusplus
}
#endif

#endif	/* _Msg_H_ */
#include <asn_internal.h>

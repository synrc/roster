/*
 * Generated by asn1c-0.9.28 (http://lionet.info/asn1c)
 * From ASN.1 module "ROSTER"
 * 	found in "/Users/proger/cg/chat/src/ROSTER.asn1"
 */

#ifndef	_Adr_H_
#define	_Adr_H_


#include <asn_application.h>

/* Including external dependencies */
#include <OCTET_STRING.h>
#include "MUC.h"
#include "P2P.h"
#include <constr_CHOICE.h>
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Dependencies */
typedef enum dst_PR {
	dst_PR_NOTHING,	/* No components present */
	dst_PR_muc,
	dst_PR_p2p
} dst_PR;

/* Adr */
typedef struct Adr {
	OCTET_STRING_t	 src;
	struct dst {
		dst_PR present;
		union Adr__dst_u {
			MUC_t	 muc;
			P2P_t	 p2p;
		} choice;
		
		/* Context for parsing across buffer boundaries */
		asn_struct_ctx_t _asn_ctx;
	} dst;
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} Adr_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_Adr;

#ifdef __cplusplus
}
#endif

#endif	/* _Adr_H_ */
#include <asn_internal.h>

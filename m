Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DE475F358
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ED6060F3A;
	Mon, 24 Jul 2023 10:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ED6060F3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690194707;
	bh=Y5uBQQDq3O2GdsDMJu21uY3VaNTlL7dQ1GxUQmDyG+Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3rzh8JaUWSZVr1fFP2KYsdZLYR/KX9aRjuPJUj0x5kcXBPDVLfywkQdg5PPKJGnIn
	 MRFpDC2b24EXzeER9r+AoSWaabj7768U3W1vNESQoSUclPVfh+ZlUxHTtM5wDGBq/5
	 GCkwrvdgZz4MfdkmYhD48+tQFSTz8Evkh2m7JQ2KRK8zRyeHSDlODcGEHDp9+HtBpH
	 g7Tdo4vyTWqL07aM3S6EwyO0CgOf60Ve6A2sFxnl6jDsuROU3TllSx36QvLcgvj6Lu
	 jHYfEt0Rtx8nNb0tZwBDQaTfg66fLUYrW1nyNWkatKTIKpJfWd9LIh/ZQodZ0M22ls
	 m3Ovrj6KMJbTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7w250nSX_u8g; Mon, 24 Jul 2023 10:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E262B60B73;
	Mon, 24 Jul 2023 10:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E262B60B73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 015D81BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA10081425
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA10081425
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IW4AxImsdvcf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:31:39 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB4DF81493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:31:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB4DF81493
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-m4QFlV7JMJWA9icTdKi2qg-1; Mon, 24 Jul 2023 06:31:36 -0400
X-MC-Unique: m4QFlV7JMJWA9icTdKi2qg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E925F3C0F663;
 Mon, 24 Jul 2023 10:31:35 +0000 (UTC)
Received: from [10.45.225.24] (unknown [10.45.225.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 01C5146A3A7;
 Mon, 24 Jul 2023 10:31:34 +0000 (UTC)
Message-ID: <1a1992ef-40c8-ce3d-1fd2-fd223eb14955@redhat.com>
Date: Mon, 24 Jul 2023 12:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-4-junfeng.guo@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230605054641.2865142-4-junfeng.guo@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1690194697;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nOuCuTwZywWyEc56TDCcCB5CrOJbbqEgNh5s2AIUsow=;
 b=E8pGmq7wUvEcOcGfJy3rpoDCKpsnzSKnVz/Vj/VNbl+VducaegB/KZrCfkkvBrfJIicGNm
 hMRzvscUsHxzz1NZL6EeZZhIvcNUoP2i4Cg54Fnjgwjp7qi782mNotLA7oKdiqmwwiV2t6
 zVDk31l5DuuI+Smw5QmuSZ7FiJ6Mo0Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=E8pGmq7w
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
 table for parser
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

See inline comments...

On 05. 06. 23 7:46, Junfeng Guo wrote:
> Parse DDP section ICE_SID_RXPARSER_METADATA_INIT into an array of
> struct ice_metainit_item.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_metainit.c | 155 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_metainit.h |  45 +++++
>   drivers/net/ethernet/intel/ice/ice_parser.c   |  11 ++
>   drivers/net/ethernet/intel/ice/ice_parser.h   |   2 +
>   .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
>   5 files changed, 214 insertions(+)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
> new file mode 100644
> index 000000000000..911099a38087
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
> @@ -0,0 +1,155 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2018-2023 Intel Corporation */
> +
> +#include "ice_common.h"
> +#include "ice_parser_util.h"
> +
> +#define ICE_METAINIT_TABLE_SIZE 16
> +
> +/**
> + * ice_metainit_dump - dump an metainit item info
> + * @hw: pointer to the hardware structure
> + * @item: metainit item to dump
> + */
> +void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item)
> +{
> +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> +	dev_info(ice_hw_to_dev(hw), "tsr = %d\n", item->tsr);
> +	dev_info(ice_hw_to_dev(hw), "ho = %d\n", item->ho);
> +	dev_info(ice_hw_to_dev(hw), "pc = %d\n", item->pc);
> +	dev_info(ice_hw_to_dev(hw), "pg_rn = %d\n", item->pg_rn);
> +	dev_info(ice_hw_to_dev(hw), "cd = %d\n", item->cd);
> +	dev_info(ice_hw_to_dev(hw), "gpr_a_ctrl = %d\n", item->gpr_a_ctrl);
> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_mdid = %d\n",
> +		 item->gpr_a_data_mdid);
> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_start = %d\n",
> +		 item->gpr_a_data_start);
> +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_len = %d\n",
> +		 item->gpr_a_data_len);
> +	dev_info(ice_hw_to_dev(hw), "gpr_a_id = %d\n", item->gpr_a_id);
> +	dev_info(ice_hw_to_dev(hw), "gpr_b_ctrl = %d\n", item->gpr_b_ctrl);
> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_mdid = %d\n",
> +		 item->gpr_b_data_mdid);
> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_start = %d\n",
> +		 item->gpr_b_data_start);
> +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_len = %d\n",
> +		 item->gpr_b_data_len);
> +	dev_info(ice_hw_to_dev(hw), "gpr_b_id = %d\n", item->gpr_b_id);
> +	dev_info(ice_hw_to_dev(hw), "gpr_c_ctrl = %d\n", item->gpr_c_ctrl);
> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_mdid = %d\n",
> +		 item->gpr_c_data_mdid);
> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_start = %d\n",
> +		 item->gpr_c_data_start);
> +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_len = %d\n",
> +		 item->gpr_c_data_len);
> +	dev_info(ice_hw_to_dev(hw), "gpr_c_id = %d\n", item->gpr_c_id);
> +	dev_info(ice_hw_to_dev(hw), "gpr_d_ctrl = %d\n", item->gpr_d_ctrl);
> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_mdid = %d\n",
> +		 item->gpr_d_data_mdid);
> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_start = %d\n",
> +		 item->gpr_d_data_start);
> +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_len = %d\n",
> +		 item->gpr_d_data_len);
> +	dev_info(ice_hw_to_dev(hw), "gpr_d_id = %d\n", item->gpr_d_id);
> +	dev_info(ice_hw_to_dev(hw), "flags = 0x%llx\n",
> +		 (unsigned long long)(item->flags));
> +}
> +
> +/** The function parses a 192 bits Metadata Init entry with below format:
> + *  BIT 0-7:	TCAM Search Key Register (mi->tsr)
> + *  BIT 8-16:	Header Offset (mi->ho)
> + *  BIT 17-24:	Program Counter (mi->pc)
> + *  BIT 25-35:	Parse Graph Root Node (mi->pg_rn)
> + *  BIT 36-38:	Control Domain (mi->cd)
> + *  BIT 39:	GPR_A Data Control (mi->gpr_a_ctrl)
> + *  BIT 40-44:	GPR_A MDID.ID (mi->gpr_a_data_mdid)
> + *  BIT 45-48:	GPR_A MDID.START (mi->gpr_a_data_start)
> + *  BIT 49-53:	GPR_A MDID.LEN (mi->gpr_a_data_len)
> + *  BIT 54-55:	reserved
> + *  BIT 56-59:	GPR_A ID (mi->gpr_a_id)
> + *  BIT 60:	GPR_B Data Control (mi->gpr_b_ctrl)
> + *  BIT 61-65:	GPR_B MDID.ID (mi->gpr_b_data_mdid)
> + *  BIT 66-69:	GPR_B MDID.START (mi->gpr_b_data_start)
> + *  BIT 70-74:	GPR_B MDID.LEN (mi->gpr_b_data_len)
> + *  BIT 75-76:	reserved
> + *  BIT 77-80:	GPR_B ID (mi->gpr_a_id)
> + *  BIT 81:	GPR_C Data Control (mi->gpr_c_ctrl)
> + *  BIT 82-86:	GPR_C MDID.ID (mi->gpr_c_data_mdid)
> + *  BIT 87-90:	GPR_C MDID.START (mi->gpr_c_data_start)
> + *  BIT 91-95:	GPR_C MDID.LEN (mi->gpr_c_data_len)
> + *  BIT 96-97:	reserved
> + *  BIT 98-101:	GPR_C ID (mi->gpr_c_id)
> + *  BIT 102:	GPR_D Data Control (mi->gpr_d_ctrl)
> + *  BIT 103-107:GPR_D MDID.ID (mi->gpr_d_data_mdid)
> + *  BIT 108-111:GPR_D MDID.START (mi->gpr_d_data_start)
> + *  BIT 112-116:GPR_D MDID.LEN (mi->gpr_d_data_len)
> + *  BIT 117-118:reserved
> + *  BIT 119-122:GPR_D ID (mi->gpr_d_id)
> + *  BIT 123-186:Flags (mi->flags)
> + *  BIT 187-191:rserved
> + */
> +static void _metainit_parse_item(struct ice_hw *hw, u16 idx, void *item,
> +				 void *data, int size)
> +{
> +	struct ice_metainit_item *mi = item;
> +	u8 *buf = data;
> +	u64 d64;
> +
> +	mi->idx = idx;
> +	d64 = *(u64 *)buf;
> +
> +	mi->tsr = (u8)(d64 & 0xff);
> +	mi->ho = (u16)((d64 >> 8) & 0x1ff);
> +	mi->pc = (u16)((d64 >> 17) & 0xff);
> +	mi->pg_rn = (u16)((d64 >> 25) & 0x3ff);
> +	mi->cd = (u16)((d64 >> 36) & 0x7);
> +	mi->gpr_a_ctrl = ((d64 >> 39) & 0x1) != 0;
> +	mi->gpr_a_data_mdid = (u8)((d64 >> 40) & 0x1f);
> +	mi->gpr_a_data_start = (u8)((d64 >> 45) & 0xf);
> +	mi->gpr_a_data_len = (u8)((d64 >> 49) & 0x1f);
> +	mi->gpr_a_id = (u8)((d64 >> 56) & 0xf);
> +
> +	d64 = *(u64 *)&buf[7] >> 4;
> +	mi->gpr_b_ctrl = (d64 & 0x1) != 0;
> +	mi->gpr_b_data_mdid = (u8)((d64 >> 1) & 0x1f);
> +	mi->gpr_b_data_start = (u8)((d64 >> 6) & 0xf);
> +	mi->gpr_b_data_len = (u8)((d64 >> 10) & 0x1f);
> +	mi->gpr_b_id = (u8)((d64 >> 17) & 0xf);
> +
> +	mi->gpr_c_ctrl = ((d64 >> 21) & 0x1) != 0;
> +	mi->gpr_c_data_mdid = (u8)((d64 >> 22) & 0x1f);
> +	mi->gpr_c_data_start = (u8)((d64 >> 27) & 0xf);
> +	mi->gpr_c_data_len = (u8)((d64 >> 31) & 0x1f);
> +	mi->gpr_c_id = (u8)((d64 >> 38) & 0xf);
> +
> +	mi->gpr_d_ctrl = ((d64 >> 42) & 0x1) != 0;
> +	mi->gpr_d_data_mdid = (u8)((d64 >> 43) & 0x1f);
> +	mi->gpr_d_data_start = (u8)((d64 >> 48) & 0xf);
> +	mi->gpr_d_data_len = (u8)((d64 >> 52) & 0x1f);
> +
> +	d64 = *(u64 *)&buf[14] >> 7;
> +	mi->gpr_d_id = (u8)(d64 & 0xf);
> +
> +	d64 = *(u64 *)&buf[15] >> 3;
> +	mi->flags = d64;
> +
> +	d64 = ((*(u64 *)&buf[16] >> 56) & 0x7);
> +	mi->flags |= (d64 << 61);
> +
> +	if (hw->debug_mask & ICE_DBG_PARSER)
> +		ice_metainit_dump(hw, mi);
> +}

Do not use hardcoded values for indices, masks and shifts and use macros 
or enums with symbolic names instead.

> +
> +/**
> + * ice_metainit_table_get - create a metainit table
> + * @hw: pointer to the hardware structure
> + */
> +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
> +{
> +	return (struct ice_metainit_item *)
> +		ice_parser_create_table(hw, ICE_SID_RXPARSER_METADATA_INIT,
> +					sizeof(struct ice_metainit_item),
> +					ICE_METAINIT_TABLE_SIZE,
> +					ice_parser_sect_item_get,
> +					_metainit_parse_item);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.h b/drivers/net/ethernet/intel/ice/ice_metainit.h
> new file mode 100644
> index 000000000000..aa7a9e178820
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2018-2023 Intel Corporation */
> +
> +#ifndef _ICE_METAINIT_H_
> +#define _ICE_METAINIT_H_
> +
> +struct ice_metainit_item {
> +	u16 idx;
> +
> +	u8 tsr;
> +	u16 ho;
> +	u16 pc;
> +	u16 pg_rn;
> +	u8 cd;
> +
> +	bool gpr_a_ctrl;
> +	u8 gpr_a_data_mdid;
> +	u8 gpr_a_data_start;
> +	u8 gpr_a_data_len;
> +	u8 gpr_a_id;
> +
> +	bool gpr_b_ctrl;
> +	u8 gpr_b_data_mdid;
> +	u8 gpr_b_data_start;
> +	u8 gpr_b_data_len;
> +	u8 gpr_b_id;
> +
> +	bool gpr_c_ctrl;
> +	u8 gpr_c_data_mdid;
> +	u8 gpr_c_data_start;
> +	u8 gpr_c_data_len;
> +	u8 gpr_c_id;
> +
> +	bool gpr_d_ctrl;
> +	u8 gpr_d_data_mdid;
> +	u8 gpr_d_data_start;
> +	u8 gpr_d_data_len;
> +	u8 gpr_d_id;
> +
> +	u64 flags;
> +};

The field names are not very descriptive except idx and flags. Any 
documentation in comment would be helpful.

> +
> +void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item *item);
> +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw);
> +#endif /*_ICE_METAINIT_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index a35f45964c9e..a1f28395c1a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -6,6 +6,7 @@
>   
>   #define ICE_SEC_DATA_OFFSET				4
>   #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> +#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
>   
>   /**
>    * ice_parser_sect_item_get - parse a item from a section
> @@ -28,6 +29,9 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
>   	case ICE_SID_RXPARSER_IMEM:
>   		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
>   		break;
> +	case ICE_SID_RXPARSER_METADATA_INIT:
> +		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> +		break;
>   	default:
>   		return NULL;
>   	}
> @@ -117,6 +121,12 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
>   		goto err;
>   	}
>   
> +	p->mi_table = ice_metainit_table_get(hw);
> +	if (!p->mi_table) {
> +		status = -EINVAL;
> +		goto err;
> +	}
> +
>   	*psr = p;
>   	return 0;
>   err:
> @@ -131,6 +141,7 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
>   void ice_parser_destroy(struct ice_parser *psr)
>   {
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> +	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
>   
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
> index b5a3c473666a..8fcc10479260 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> @@ -9,6 +9,8 @@ struct ice_parser {
>   
>   	/* load data from section ICE_SID_RX_PARSER_IMEM */
>   	struct ice_imem_item *imem_table;
> +	/* load data from section ICE_SID_RXPARSER_METADATA_INIT */
> +	struct ice_metainit_item *mi_table;
>   };
>   
>   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> index 6259d3d97b23..59c67f1a1951 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> @@ -5,6 +5,7 @@
>   #define _ICE_PARSER_UTIL_H_
>   
>   #include "ice_imem.h"
> +#include "ice_metainit.h"
>   
>   struct ice_pkg_sect_hdr {
>   	__le16 count;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

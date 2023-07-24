Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A8F75F38A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:40:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A7FE60F3F;
	Mon, 24 Jul 2023 10:40:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A7FE60F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690195210;
	bh=EfgXaRgWTT+jS2YpWRxFi7WfzALGACuPKZdzezQnjWU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fJJHdrgTlSSb6U4dC0+n6too+p0AmlQWRPFiBkVCMLS7u2YGmEGMlYIvzpZkBDqj/
	 85fgNPd09N2a+DNQNIjeAthWgzn31M9DO0l9QL47kzW4McmpaWS9OXP0E+NeMNJXoN
	 HTEfZf7XBpC0Db3vmD0TzL9X8VB3Nrw1xT8ESWGkAIf4mXmI27K7bkf84GN7LHky2D
	 YqDBHLVsLfH9X2WQLXHcd1f8MdI3PT9Rfov4T1SLmRZe1BDFM8XMY4xOn2webZh/eY
	 l0hcALv3wQzK1RorqF2/xshzk9i379dDOuOWl3u9ILyp1nbGpujM6JncGz+nb7Q717
	 5rtdQFIZUxY4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTS6omsT1tqI; Mon, 24 Jul 2023 10:40:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7494160EAA;
	Mon, 24 Jul 2023 10:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7494160EAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6781BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30EBA81E31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30EBA81E31
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtuvXCg-cqPA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:40:02 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 671F781E28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 671F781E28
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-327-6GCoUHMqNiya5PI1OgEWDw-1; Mon, 24 Jul 2023 06:39:57 -0400
X-MC-Unique: 6GCoUHMqNiya5PI1OgEWDw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B99F4185A793;
 Mon, 24 Jul 2023 10:39:56 +0000 (UTC)
Received: from [10.45.225.24] (unknown [10.45.225.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C3C1C2166B25;
 Mon, 24 Jul 2023 10:39:55 +0000 (UTC)
Message-ID: <8b3f9a2b-a1d0-0e7a-66ac-287483a4897f@redhat.com>
Date: Mon, 24 Jul 2023 12:39:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-6-junfeng.guo@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230605054641.2865142-6-junfeng.guo@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1690195201;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kkl/1EOGyeroLvs/H1ArP4mbP7ssDs98KyQmVD/K+G8=;
 b=EWxa/ezp2sQPaICR6MmZLnNoHqv1QWduiXgS6ySCvFW7tEOVXg0xftS5A8CnC5PS1KZJU3
 LkcXn7TwiR+Am+2Jl9CcRd1yG3RfOxj/4GyQ6Qf0vc/qOab80qMquzf+1RlpVZHIP6Nfyu
 XPMChcg5DC34JqA1Cx8nI0kC6mAla6g=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EWxa/ezp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 05/15] ice: init boost
 tcam table for parser
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

Like in my previous replies... Do not use hardcoded values for array 
indices, masks and shifts...

On 05. 06. 23 7:46, Junfeng Guo wrote:
> Parse DDP section ICE_SID_RXPARSER_CAM into an array of
> ice_bst_tcam_item.
> Parse DDP section ICE_SID_LBL_RXPARSER_TMEM into an array of
> ice_lbl_item.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 247 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  27 ++
>   drivers/net/ethernet/intel/ice/ice_imem.c     |   2 +-
>   drivers/net/ethernet/intel/ice/ice_metainit.c |   2 +-
>   drivers/net/ethernet/intel/ice/ice_parser.c   |  47 +++-
>   drivers/net/ethernet/intel/ice/ice_parser.h   |   5 +
>   .../net/ethernet/intel/ice/ice_parser_util.h  |  12 +-
>   drivers/net/ethernet/intel/ice/ice_pg_cam.c   |   8 +-
>   8 files changed, 341 insertions(+), 9 deletions(-)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> new file mode 100644
> index 000000000000..24e793580637
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> @@ -0,0 +1,247 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2018-2023 Intel Corporation */
> +
> +#include "ice_common.h"
> +#include "ice_parser_util.h"
> +
> +#define ICE_BST_TCAM_TABLE_SIZE 256
> +
> +static void _bst_np_kb_dump(struct ice_hw *hw, struct ice_np_keybuilder *kb)
> +{
> +	dev_info(ice_hw_to_dev(hw), "next proto key builder:\n");
> +	dev_info(ice_hw_to_dev(hw), "\tops = %d\n", kb->ops);
> +	dev_info(ice_hw_to_dev(hw), "\tstart_or_reg0 = %d\n",
> +		 kb->start_or_reg0);
> +	dev_info(ice_hw_to_dev(hw), "\tlen_or_reg1 = %d\n", kb->len_or_reg1);
> +}
> +
> +static void _bst_pg_kb_dump(struct ice_hw *hw, struct ice_pg_keybuilder *kb)
> +{
> +	dev_info(ice_hw_to_dev(hw), "parse graph key builder:\n");
> +	dev_info(ice_hw_to_dev(hw), "\tflag0_ena = %d\n", kb->flag0_ena);
> +	dev_info(ice_hw_to_dev(hw), "\tflag1_ena = %d\n", kb->flag1_ena);
> +	dev_info(ice_hw_to_dev(hw), "\tflag2_ena = %d\n", kb->flag2_ena);
> +	dev_info(ice_hw_to_dev(hw), "\tflag3_ena = %d\n", kb->flag3_ena);
> +	dev_info(ice_hw_to_dev(hw), "\tflag0_idx = %d\n", kb->flag0_idx);
> +	dev_info(ice_hw_to_dev(hw), "\tflag1_idx = %d\n", kb->flag1_idx);
> +	dev_info(ice_hw_to_dev(hw), "\tflag2_idx = %d\n", kb->flag2_idx);
> +	dev_info(ice_hw_to_dev(hw), "\tflag3_idx = %d\n", kb->flag3_idx);
> +	dev_info(ice_hw_to_dev(hw), "\talu_reg_idx = %d\n", kb->alu_reg_idx);
> +}
> +
> +static void _bst_alu_dump(struct ice_hw *hw, struct ice_alu *alu, int index)
> +{
> +	dev_info(ice_hw_to_dev(hw), "alu%d:\n", index);
> +	dev_info(ice_hw_to_dev(hw), "\topc = %d\n", alu->opc);
> +	dev_info(ice_hw_to_dev(hw), "\tsrc_start = %d\n", alu->src_start);
> +	dev_info(ice_hw_to_dev(hw), "\tsrc_len = %d\n", alu->src_len);
> +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_select = %d\n",
> +		 alu->shift_xlate_select);
> +	dev_info(ice_hw_to_dev(hw), "\tshift_xlate_key = %d\n",
> +		 alu->shift_xlate_key);
> +	dev_info(ice_hw_to_dev(hw), "\tsrc_reg_id = %d\n", alu->src_reg_id);
> +	dev_info(ice_hw_to_dev(hw), "\tdst_reg_id = %d\n", alu->dst_reg_id);
> +	dev_info(ice_hw_to_dev(hw), "\tinc0 = %d\n", alu->inc0);
> +	dev_info(ice_hw_to_dev(hw), "\tinc1 = %d\n", alu->inc1);
> +	dev_info(ice_hw_to_dev(hw), "\tproto_offset_opc = %d\n",
> +		 alu->proto_offset_opc);
> +	dev_info(ice_hw_to_dev(hw), "\tproto_offset = %d\n",
> +		 alu->proto_offset);
> +	dev_info(ice_hw_to_dev(hw), "\tbranch_addr = %d\n", alu->branch_addr);
> +	dev_info(ice_hw_to_dev(hw), "\timm = %d\n", alu->imm);
> +	dev_info(ice_hw_to_dev(hw), "\tdst_start = %d\n", alu->dst_start);
> +	dev_info(ice_hw_to_dev(hw), "\tdst_len = %d\n", alu->dst_len);
> +	dev_info(ice_hw_to_dev(hw), "\tflags_extr_imm = %d\n",
> +		 alu->flags_extr_imm);
> +	dev_info(ice_hw_to_dev(hw), "\tflags_start_imm= %d\n",
> +		 alu->flags_start_imm);
> +}
> +
> +/**
> + * ice_bst_tcam_dump - dump a boost tcam info
> + * @hw: pointer to the hardware structure
> + * @item: boost tcam to dump
> + */
> +void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item)
> +{
> +	int i;
> +
> +	dev_info(ice_hw_to_dev(hw), "address = %d\n", item->address);
> +	dev_info(ice_hw_to_dev(hw), "key    :");
> +	for (i = 0; i < 20; i++)
> +		dev_info(ice_hw_to_dev(hw), "%02x ", item->key[i]);
> +	dev_info(ice_hw_to_dev(hw), "\n");
> +	dev_info(ice_hw_to_dev(hw), "key_inv:");
> +	for (i = 0; i < 20; i++)
> +		dev_info(ice_hw_to_dev(hw), "%02x ", item->key_inv[i]);
> +	dev_info(ice_hw_to_dev(hw), "\n");
> +	dev_info(ice_hw_to_dev(hw), "hit_idx_grp = %d\n", item->hit_idx_grp);
> +	dev_info(ice_hw_to_dev(hw), "pg_pri = %d\n", item->pg_pri);
> +	_bst_np_kb_dump(hw, &item->np_kb);
> +	_bst_pg_kb_dump(hw, &item->pg_kb);
> +	_bst_alu_dump(hw, &item->alu0, 0);
> +	_bst_alu_dump(hw, &item->alu1, 1);
> +	_bst_alu_dump(hw, &item->alu2, 2);
> +}
> +
> +/** The function parses a 96 bits ALU entry with below format:
> + *  BIT 0-5:	Opcode (alu->opc)
> + *  BIT 6-13:	Source Start (alu->src_start)
> + *  BIT 14-18:	Source Length (alu->src_len)
> + *  BIT 19:	Shift/Xlate Select (alu->shift_xlate_select)
> + *  BIT 20-23:	Shift/Xlate Key (alu->shift_xlate_key)
> + *  BIT 24-30:	Source Register ID (alu->src_reg_id)
> + *  BIT 31-37:	Dest. Register ID (alu->dst_reg_id)
> + *  BIT 38:	Inc0 (alu->inc0)
> + *  BIT 39:	Inc1:(alu->inc1)
> + *  BIT 40:41	Protocol Offset Opcode (alu->proto_offset_opc)
> + *  BIT 42:49	Protocol Offset (alu->proto_offset)
> + *  BIT 50:57	Branch Address (alu->branch_addr)
> + *  BIT 58:73	Immediate (alu->imm)
> + *  BIT 74	Dedicated Flags Enable (alu->dedicate_flags_ena)
> + *  BIT 75:80	Dest. Start (alu->dst_start)
> + *  BIT 81:86	Dest. Length (alu->dst_len)
> + *  BIT 87	Flags Extract Imm. (alu->flags_extr_imm)
> + *  BIT 88:95	Flags Start/Immediate (alu->flags_start_imm)
> + *
> + *  NOTE: the first 7 bits are skipped as the start bit is not
> + *  byte aligned.
> + */
> +static void _bst_alu_init(struct ice_alu *alu, u8 *data)
> +{
> +	u64 d64 = *(u64 *)data >> 7;
> +
> +	alu->opc = (enum ice_alu_opcode)(d64 & 0x3f);
> +	alu->src_start = (u8)((d64 >> 6) & 0xff);
> +	alu->src_len = (u8)((d64 >> 14) & 0x1f);
> +	alu->shift_xlate_select = ((d64 >> 19) & 0x1) != 0;
> +	alu->shift_xlate_key = (u8)((d64 >> 20) & 0xf);
> +	alu->src_reg_id = (u8)((d64 >> 24) & 0x7f);
> +	alu->dst_reg_id = (u8)((d64 >> 31) & 0x7f);
> +	alu->inc0 = ((d64 >> 38) & 0x1) != 0;
> +	alu->inc1 = ((d64 >> 39) & 0x1) != 0;
> +	alu->proto_offset_opc = (u8)((d64 >> 40) & 0x3);
> +	alu->proto_offset = (u8)((d64 >> 42) & 0xff);
> +
> +	d64 = *(u64 *)(&data[6]) >> 9;
> +
> +	alu->branch_addr = (u8)(d64 & 0xff);
> +	alu->imm = (u16)((d64 >> 8) & 0xffff);
> +	alu->dedicate_flags_ena = ((d64 >> 24) & 0x1) != 0;
> +	alu->dst_start = (u8)((d64 >> 25) & 0x3f);
> +	alu->dst_len = (u8)((d64 >> 31) & 0x3f);
> +	alu->flags_extr_imm = ((d64 >> 37) & 0x1) != 0;
> +	alu->flags_start_imm = (u8)((d64 >> 38) & 0xff);
> +}
> +
> +/** The function parses a 35 bits Parse Graph Key Build with below format:
> + *  BIT 0:	Flag 0 Enable (kb->flag0_ena)
> + *  BIT 1-6:	Flag 0 Index (kb->flag0_idx)
> + *  BIT 7:	Flag 1 Enable (kb->flag1_ena)
> + *  BIT 8-13:	Flag 1 Index (kb->flag1_idx)
> + *  BIT 14:	Flag 2 Enable (kb->flag2_ena)
> + *  BIT 15-20:	Flag 2 Index (kb->flag2_idx)
> + *  BIT 21:	Flag 3 Enable (kb->flag3_ena)
> + *  BIT 22-27:	Flag 3 Index (kb->flag3_idx)
> + *  BIT 28-34:	ALU Register Index (kb->alu_reg_idx)
> + */
> +static void _bst_pgkb_init(struct ice_pg_keybuilder *kb, u64 data)
> +{
> +	kb->flag0_ena = (data & 0x1) != 0;
> +	kb->flag0_idx = (u8)((data >> 1) & 0x3f);
> +	kb->flag1_ena = ((data >> 7) & 0x1) != 0;
> +	kb->flag1_idx = (u8)((data >> 8) & 0x3f);
> +	kb->flag2_ena = ((data >> 14) & 0x1) != 0;
> +	kb->flag2_idx = (u8)((data >> 15) & 0x3f);
> +	kb->flag3_ena = ((data >> 21) & 0x1) != 0;
> +	kb->flag3_idx = (u8)((data >> 22) & 0x3f);
> +	kb->alu_reg_idx = (u8)((data >> 28) & 0x7f);
> +}
> +
> +/** The function parses a 18 bits Next Protocol Key Build with below format:
> + *  BIT 0-1:	Opcode kb->ops
> + *  BIT 2-9:	Start / Reg 0 (kb->start_or_reg0)
> + *  BIT 10-17:	Length / Reg 1 (kb->len_or_reg1)
> + */
> +static void _bst_npkb_init(struct ice_np_keybuilder *kb, u32 data)
> +{
> +	kb->ops = (u8)(data & 0x3);
> +	kb->start_or_reg0 = (u8)((data >> 2) & 0xff);
> +	kb->len_or_reg1 = (u8)((data >> 10) & 0xff);
> +}
> +
> +/** The function parses a 704 bits Boost TCAM entry with below format:
> + *  BIT 0-15:	Address (ti->address)
> + *  BIT 16-31:	reserved
> + *  BIT 32-191: Key (ti->key)
> + *  BIT 192-351:Key Invert (ti->key_inv)
> + *  BIT 352-359:Boost Hit Index Group (ti->hit_idx_grp)
> + *  BIT 360-361:PG Priority (ti->pg_pri)
> + *  BIT 362-379:Next Proto Key Build (ti->np_kb)
> + *  BIT 380-414:PG Key Build (ti->pg_kb)
> + *  BIT 415-510:ALU 0 (ti->alu0)
> + *  BIT 511-606:ALU 1 (ti->alu1)
> + *  BIT 607-702:ALU 2 (ti->alu2)
> + *  BIT 703:	reserved
> + */
> +static void _bst_parse_item(struct ice_hw *hw, u16 idx, void *item,
> +			    void *data, int size)
> +{
> +	struct ice_bst_tcam_item *ti = item;
> +	u8 *buf = data;
> +	int i;
> +
> +	ti->address = *(u16 *)buf;
> +
> +	for (i = 0; i < 20; i++)
> +		ti->key[i] = buf[4 + i];
> +	for (i = 0; i < 20; i++)
> +		ti->key_inv[i] = buf[24 + i];
> +	ti->hit_idx_grp = buf[44];
> +	ti->pg_pri = buf[45] & 0x3;
> +	_bst_npkb_init(&ti->np_kb, *(u32 *)&buf[45] >> 2);
> +	_bst_pgkb_init(&ti->pg_kb, *(u64 *)&buf[47] >> 4);
> +	_bst_alu_init(&ti->alu0, &buf[51]);
> +	_bst_alu_init(&ti->alu1, &buf[63]);
> +	_bst_alu_init(&ti->alu2, &buf[75]);
> +
> +	if (hw->debug_mask & ICE_DBG_PARSER)
> +		ice_bst_tcam_dump(hw, ti);
> +}
> +
> +/**
> + * ice_bst_tcam_table_get - create a boost tcam table
> + * @hw: pointer to the hardware structure
> + */
> +struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw)
> +{
> +	return (struct ice_bst_tcam_item *)
> +		ice_parser_create_table(hw, ICE_SID_RXPARSER_BOOST_TCAM,
> +					sizeof(struct ice_bst_tcam_item),
> +					ICE_BST_TCAM_TABLE_SIZE,
> +					ice_parser_sect_item_get,
> +					_bst_parse_item, true);
> +}
> +
> +static void _parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
> +			    void *data, int size)
> +{
> +	ice_parse_item_dflt(hw, idx, item, data, size);
> +
> +	if (hw->debug_mask & ICE_DBG_PARSER)
> +		ice_lbl_dump(hw, (struct ice_lbl_item *)item);
> +}
> +
> +/**
> + * ice_bst_lbl_table_get - create a boost label table
> + * @hw: pointer to the hardware structure
> + */
> +struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw)
> +{
> +	return (struct ice_lbl_item *)
> +		ice_parser_create_table(hw, ICE_SID_LBL_RXPARSER_TMEM,
> +					sizeof(struct ice_lbl_item),
> +					ICE_BST_TCAM_TABLE_SIZE,
> +					ice_parser_sect_item_get,
> +					_parse_lbl_item, true);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> new file mode 100644
> index 000000000000..9d78a140bc02
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2018-2023 Intel Corporation */
> +
> +#ifndef _ICE_BST_TCAM_H_
> +#define _ICE_BST_TCAM_H_
> +
> +#include "ice_imem.h"
> +
> +struct ice_bst_tcam_item {
> +	u16 address;
> +	u8 key[20];
> +	u8 key_inv[20];
> +	u8 hit_idx_grp;
> +	u8 pg_pri;
> +	struct ice_np_keybuilder np_kb;
> +	struct ice_pg_keybuilder pg_kb;
> +	struct ice_alu alu0;
> +	struct ice_alu alu1;
> +	struct ice_alu alu2;
> +};
> +
> +void ice_bst_tcam_dump(struct ice_hw *hw, struct ice_bst_tcam_item *item);
> +
> +struct ice_bst_tcam_item *ice_bst_tcam_table_get(struct ice_hw *hw);
> +
> +struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
> +#endif /*_ICE_BST_TCAM_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_imem.c b/drivers/net/ethernet/intel/ice/ice_imem.c
> index 2bd48f080326..2ce186cbe4fd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_imem.c
> +++ b/drivers/net/ethernet/intel/ice/ice_imem.c
> @@ -246,5 +246,5 @@ struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_imem_item),
>   					ICE_IMEM_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_imem_parse_item);
> +					_imem_parse_item, false);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c b/drivers/net/ethernet/intel/ice/ice_metainit.c
> index 911099a38087..00fd86ce5fcf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_metainit.c
> +++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
> @@ -151,5 +151,5 @@ struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_metainit_item),
>   					ICE_METAINIT_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_metainit_parse_item);
> +					_metainit_parse_item, false);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index 22c2382ae9e8..b280245dbdd4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -11,6 +11,22 @@
>   #define ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE		17
>   #define ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE		12
>   #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
> +#define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE		88
> +
> +#define ICE_SEC_LBL_DATA_OFFSET				2
> +#define ICE_SID_LBL_ENTRY_SIZE				66
> +
> +void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item)
> +{
> +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> +	dev_info(ice_hw_to_dev(hw), "label = %s\n", item->label);
> +}
> +
> +void ice_parse_item_dflt(struct ice_hw *hw, u16 idx, void *item,
> +			 void *data, int size)
> +{
> +	memcpy(item, data, size);
> +}
>   
>   /**
>    * ice_parser_sect_item_get - parse a item from a section
> @@ -48,6 +64,13 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
>   	case ICE_SID_RXPARSER_NOMATCH_SPILL:
>   		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
>   		break;
> +	case ICE_SID_RXPARSER_BOOST_TCAM:
> +		size = ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_LBL_RXPARSER_TMEM:
> +		data_off = ICE_SEC_LBL_DATA_OFFSET;
> +		size = ICE_SID_LBL_ENTRY_SIZE;
> +		break;
>   	default:
>   		return NULL;
>   	}
> @@ -69,6 +92,7 @@ void *ice_parser_sect_item_get(u32 sect_type, void *section,
>    * @length: number of items in the table to create
>    * @item_get: the function will be parsed to ice_pkg_enum_entry
>    * @parse_item: the function to parse the item
> + * @no_offset: ignore header offset, calculate index from 0
>    */
>   void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
>   			      u32 item_size, u32 length,
> @@ -76,7 +100,8 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
>   						u32 index, u32 *offset),
>   			      void (*parse_item)(struct ice_hw *hw, u16 idx,
>   						 void *item, void *data,
> -						 int size))
> +						 int size),
> +			      bool no_offset)
>   {
>   	struct ice_seg *seg = hw->seg;
>   	struct ice_pkg_enum state;
> @@ -101,7 +126,11 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
>   			struct ice_pkg_sect_hdr *hdr =
>   				(struct ice_pkg_sect_hdr *)state.sect;
>   
> -			idx = le16_to_cpu(hdr->offset) + state.entry_idx;
> +			if (no_offset)
> +				idx++;
> +			else
> +				idx = le16_to_cpu(hdr->offset) +
> +							state.entry_idx;
>   			parse_item(hw, idx,
>   				   (void *)((uintptr_t)table +
>   					    ((uintptr_t)idx *
> @@ -167,6 +196,18 @@ int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr)
>   		goto err;
>   	}
>   
> +	p->bst_tcam_table = ice_bst_tcam_table_get(hw);
> +	if (!p->bst_tcam_table) {
> +		status = -EINVAL;
> +		goto err;
> +	}
> +
> +	p->bst_lbl_table = ice_bst_lbl_table_get(hw);
> +	if (!p->bst_lbl_table) {
> +		status = -EINVAL;
> +		goto err;
> +	}
> +
>   	*psr = p;
>   	return 0;
>   err:
> @@ -186,6 +227,8 @@ void ice_parser_destroy(struct ice_parser *psr)
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_sp_cam_table);
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_cam_table);
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr->pg_nm_sp_cam_table);
> +	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
> +	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
>   
>   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
> index 1f699ef12387..af73b19d09c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> @@ -7,6 +7,7 @@
>   #include "ice_metainit.h"
>   #include "ice_imem.h"
>   #include "ice_pg_cam.h"
> +#include "ice_bst_tcam.h"
>   
>   struct ice_parser {
>   	struct ice_hw *hw; /* pointer to the hardware structure */
> @@ -23,6 +24,10 @@ struct ice_parser {
>   	struct ice_pg_nm_cam_item *pg_nm_cam_table;
>   	/* load data from section ICE_SID_RXPARSER_NOMATCH_SPILL */
>   	struct ice_pg_nm_cam_item *pg_nm_sp_cam_table;
> +	/* load data from section ICE_SID_RXPARSER_BOOST_TCAM */
> +	struct ice_bst_tcam_item *bst_tcam_table;
> +	/* load data from section ICE_SID_LBL_RXPARSER_TMEM */
> +	struct ice_lbl_item *bst_lbl_table;
>   };
>   
>   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> index 59c67f1a1951..2f93f93c1e10 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> @@ -7,11 +7,20 @@
>   #include "ice_imem.h"
>   #include "ice_metainit.h"
>   
> +struct ice_lbl_item {
> +	u16 idx;
> +	char label[64];
> +};
> +
>   struct ice_pkg_sect_hdr {
>   	__le16 count;
>   	__le16 offset;
>   };
>   
> +void ice_lbl_dump(struct ice_hw *hw, struct ice_lbl_item *item);
> +void ice_parse_item_dflt(struct ice_hw *hw, u16 idx, void *item,
> +			 void *data, int size);
> +
>   void *ice_parser_sect_item_get(u32 sect_type, void *section,
>   			       u32 index, u32 *offset);
>   
> @@ -21,5 +30,6 @@ void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
>   					       u32 index, u32 *offset),
>   			      void (*parse_item)(struct ice_hw *hw, u16 idx,
>   						 void *item, void *data,
> -						 int size));
> +						 int size),
> +			      bool no_offset);
>   #endif /* _ICE_PARSER_UTIL_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_pg_cam.c b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> index 25b837ba684c..1c9a9e906f3e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> +++ b/drivers/net/ethernet/intel/ice/ice_pg_cam.c
> @@ -254,7 +254,7 @@ struct ice_pg_cam_item *ice_pg_cam_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_pg_cam_item),
>   					ICE_PG_CAM_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_pg_cam_parse_item);
> +					_pg_cam_parse_item, false);
>   }
>   
>   /**
> @@ -268,7 +268,7 @@ struct ice_pg_cam_item *ice_pg_sp_cam_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_pg_cam_item),
>   					ICE_PG_SP_CAM_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_pg_sp_cam_parse_item);
> +					_pg_sp_cam_parse_item, false);
>   }
>   
>   /**
> @@ -282,7 +282,7 @@ struct ice_pg_nm_cam_item *ice_pg_nm_cam_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_pg_nm_cam_item),
>   					ICE_PG_NM_CAM_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_pg_nm_cam_parse_item);
> +					_pg_nm_cam_parse_item, false);
>   }
>   
>   /**
> @@ -296,5 +296,5 @@ struct ice_pg_nm_cam_item *ice_pg_nm_sp_cam_table_get(struct ice_hw *hw)
>   					sizeof(struct ice_pg_nm_cam_item),
>   					ICE_PG_NM_SP_CAM_TABLE_SIZE,
>   					ice_parser_sect_item_get,
> -					_pg_nm_sp_cam_parse_item);
> +					_pg_nm_sp_cam_parse_item, false);
>   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

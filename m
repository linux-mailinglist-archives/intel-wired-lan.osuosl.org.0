Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2851E75F4C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 13:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67B1740C11;
	Mon, 24 Jul 2023 11:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67B1740C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690197436;
	bh=rCOfPnba3gup2iCjPpKMNlTgiw0PJ/fTXDp0gaK6Urs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uf0JN2UnSVS9sDuj4gMfQmE60t8X+0A9BsEW1hozpYTNOfCyT/Oi4uN9s5UnM8i/X
	 hdjhEzSuYatqpEy7edL01FiC1uHs2I1RwlBayJUERQaKpqtLFiL1bEQFTQmhxtrRWd
	 +Ss7wZ/ocNnJyPQR9/8H+lc8OnKuPP3nd5nlXUMQ6lA3zB5A/b0ueP+ZGHs6AKqhMP
	 HanI+mVImXi+k7HAYQPwbkcNujeA63vZjuIZXwE+hsJVHbkIOtXEeRRnDrUrlT60iX
	 mmTFtpSPYkPWgLoCl4ysJmqJ4HbRwtsYqhR7IUHeYk5RyiHraAZnyskNaqM2BNQQiu
	 ocDc6m3tVirng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6RuHtv-it6M0; Mon, 24 Jul 2023 11:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 022144012A;
	Mon, 24 Jul 2023 11:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 022144012A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 929051BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 691124012A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 691124012A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y3IU5CASS5Wi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 11:17:09 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86550400C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86550400C8
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-679-VN36vpgTNzCh0DoAe-rl0A-1; Mon, 24 Jul 2023 07:17:05 -0400
X-MC-Unique: VN36vpgTNzCh0DoAe-rl0A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B585288D0F3;
 Mon, 24 Jul 2023 11:17:04 +0000 (UTC)
Received: from [10.45.225.24] (unknown [10.45.225.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DD61C2166B25;
 Mon, 24 Jul 2023 11:17:03 +0000 (UTC)
Message-ID: <044eba59-0880-501a-7fb5-75b84fe51b69@redhat.com>
Date: Mon, 24 Jul 2023 13:17:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-16-junfeng.guo@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230605054641.2865142-16-junfeng.guo@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1690197428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qk5vbQfpc6/D9qzta5WTt3wo81amgeVb0dGHTQftHJc=;
 b=hPe+dC8mNxNK9t0FgqDGuI1+uRjSRGTjp3WMnXAAwRUKXt/GQAPm3mdGxNElvLAr+bG5d3
 kWnsKFzFsVMVBZudjOyqgkQ2viKl0dZCsWKnpFUNJVIjq6dn2j9IW2zJzMiNJqVr0hudZv
 jIcqj2fiugYLL6hHuA74m+GRgvIXDoM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hPe+dC8m
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ice: add API for
 parser profile initialization
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



On 05. 06. 23 7:46, Junfeng Guo wrote:
> Add API ice_parser_profile_init to init a parser profile base on
> a parser result and a mask buffer. The ice_parser_profile can feed to
> low level FXP engine to create HW profile / field vector directly.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_parser.c | 113 ++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_parser.h |  24 +++++
>   2 files changed, 137 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index 1ca0886e6590..ad42dcd31cb3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -448,3 +448,116 @@ int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
>   {
>   	return _tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
>   }
> +
> +static bool _nearest_proto_id(struct ice_parser_result *rslt, u16 offset,
> +			      u8 *proto_id, u16 *proto_off)
> +{
> +	u16 dist = 0xffff;

Use U16_MAX here...

> +	u8 p = 0

Also 'proto' instead of 'p' would be better.

> +	int i;
> +
> +	for (i = 0; i < rslt->po_num; i++) {
> +		if (offset < rslt->po[i].offset)
> +			continue;
> +		if (offset - rslt->po[i].offset < dist) {
> +			p = rslt->po[i].proto_id;
> +			dist = offset - rslt->po[i].offset;
> +		}
> +	}
> +
> +	if (dist % 2)
> +		return false;
> +
> +	*proto_id = p;
> +	*proto_off = dist;
> +
> +	return true;
> +}
> +
> +/** default flag mask to cover GTP_EH_PDU, GTP_EH_PDU_LINK and TUN2
> + * In future, the flag masks should learn from DDP
> + */
> +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW	0x4002
> +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL	0x0000
> +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD	0x6080
> +#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS	0x6010
> +
> +/**
> + * ice_parser_profile_init  - initialize a FXP profile base on parser result
> + * @rslt: a instance of a parser result
> + * @pkt_buf: packet data buffer
> + * @msk_buf: packet mask buffer
> + * @buf_len: packet length
> + * @blk: FXP pipeline stage
> + * @prefix_match: match protocol stack exactly or only prefix
> + * @prof: input/output parameter to save the profile
> + */
> +int ice_parser_profile_init(struct ice_parser_result *rslt,
> +			    const u8 *pkt_buf, const u8 *msk_buf,
> +			    int buf_len, enum ice_block blk,
> +			    bool prefix_match,
> +			    struct ice_parser_profile *prof)
> +{
> +	u8 proto_id = 0xff;
> +	u16 proto_off = 0;
> +	u16 off;
> +
> +	memset(prof, 0, sizeof(*prof));
> +	set_bit(rslt->ptype, prof->ptypes);
> +	if (blk == ICE_BLK_SW) {
> +		prof->flags = rslt->flags_sw;
> +		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW;
> +	} else if (blk == ICE_BLK_ACL) {
> +		prof->flags = rslt->flags_acl;
> +		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL;
> +	} else if (blk == ICE_BLK_FD) {
> +		prof->flags = rslt->flags_fd;
> +		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD;
> +	} else if (blk == ICE_BLK_RSS) {
> +		prof->flags = rslt->flags_rss;
> +		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	for (off = 0; off < buf_len - 1; off++) {
> +		if (msk_buf[off] == 0 && msk_buf[off + 1] == 0)
> +			continue;
> +		if (!_nearest_proto_id(rslt, off, &proto_id, &proto_off))
> +			continue;
> +		if (prof->fv_num >= 32)
> +			return -EINVAL;
> +
> +		prof->fv[prof->fv_num].proto_id = proto_id;
> +		prof->fv[prof->fv_num].offset = proto_off;
> +		prof->fv[prof->fv_num].spec = *(const u16 *)&pkt_buf[off];
> +		prof->fv[prof->fv_num].msk = *(const u16 *)&msk_buf[off];
> +		prof->fv_num++;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_parser_profile_dump - dump an FXP profile info
> + * @hw: pointer to the hardware structure
> + * @prof: profile info to dump
> + */
> +void ice_parser_profile_dump(struct ice_hw *hw, struct ice_parser_profile *prof)
> +{
> +	u16 i;
> +
> +	dev_info(ice_hw_to_dev(hw), "ptypes:\n");
> +	for (i = 0; i < ICE_FLOW_PTYPE_MAX; i++)
> +		if (test_bit(i, prof->ptypes))
> +			dev_info(ice_hw_to_dev(hw), "\t%d\n", i);
> +
> +	for (i = 0; i < prof->fv_num; i++)
> +		dev_info(ice_hw_to_dev(hw),
> +			 "proto = %d, offset = %d spec = 0x%04x, mask = 0x%04x\n",
> +			 prof->fv[i].proto_id, prof->fv[i].offset,
> +			 prof->fv[i].spec, prof->fv[i].msk);
> +
> +	dev_info(ice_hw_to_dev(hw), "flags = 0x%04x\n", prof->flags);
> +	dev_info(ice_hw_to_dev(hw), "flags_msk = 0x%04x\n", prof->flags_msk);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
> index 432d47031298..ecbec5843e9f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> @@ -85,4 +85,28 @@ struct ice_parser_result {
>   int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
>   		   int pkt_len, struct ice_parser_result *rslt);
>   void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
> +
> +struct ice_parser_fv {
> +	u8 proto_id; /* hardware protocol ID */
> +	u16 offset; /* offset from the start of the protocol header */
> +	u16 spec; /* 16 bits pattern to match */
> +	u16 msk; /* 16 bits pattern mask */
> +};
> +
> +struct ice_parser_profile {
> +	struct ice_parser_fv fv[48]; /* field vector arrary */
> +	int fv_num; /* field vector number must <= 48 */
> +	u16 flags; /* 16 bits key builder flag */
> +	u16 flags_msk; /* key builder flag masker */
> +	/* 1024 bits PTYPE bitmap */
> +	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
> +};
> +
> +int ice_parser_profile_init(struct ice_parser_result *rslt,
> +			    const u8 *pkt_buf, const u8 *msk_buf,
> +					int buf_len, enum ice_block blk,
> +					bool prefix_match,
> +					struct ice_parser_profile *prof);
> +void ice_parser_profile_dump(struct ice_hw *hw,
> +			     struct ice_parser_profile *prof);
>   #endif /* _ICE_PARSER_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

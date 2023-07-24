Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3880675F48B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 13:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61C9240BFD;
	Mon, 24 Jul 2023 11:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61C9240BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690196998;
	bh=eCYS00sjawb/g8s+5nfkbRB610G1RxXYzORmSsy0XKg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rp930kEWt0FezeC2vzcEmKZZogev3+T7Sq+CONChcvPJN1wMhutlTB2ovC12CrbwS
	 PR1+N/q98l2LbGXKKQzKy6e6DfIaVpXBY/HuPK8Okx7Suiov7S5Hx3LeJfe8hhGnE1
	 XnuSXkCDMrrOKWB79m6KasivzubSb+Eb9Q7WWe9BY1WaePmH4xXj1WucH1E3vrQJ3p
	 4W8A3hA0oh0tfC3mCXTBc47o4eQb1hhXDnPE4abJeYJnt0jJjIfquTDJmIyTMO6r/H
	 3wl7t4ZC26DGfTelL3b15pH8ms3if8/lwgTQUpJwW8bj41EMoTdmvpRyYFwsDCpR1N
	 bj1ZErKKptGsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OnrI5PJAmdC5; Mon, 24 Jul 2023 11:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 271E140182;
	Mon, 24 Jul 2023 11:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 271E140182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A71951BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F2A781EE9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F2A781EE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18rbCUwm2tFd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 11:09:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A857C81EE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 11:09:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A857C81EE7
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-116-Ugr-HIyiOxa70c4JyyrOug-1; Mon, 24 Jul 2023 07:09:47 -0400
X-MC-Unique: Ugr-HIyiOxa70c4JyyrOug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 190F61C03D9E;
 Mon, 24 Jul 2023 11:09:47 +0000 (UTC)
Received: from [10.45.225.24] (unknown [10.45.225.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40B5AF782E;
 Mon, 24 Jul 2023 11:09:46 +0000 (UTC)
Message-ID: <123b098f-c398-6156-e861-6cb8f06e87eb@redhat.com>
Date: Mon, 24 Jul 2023 13:09:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-14-junfeng.guo@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230605054641.2865142-14-junfeng.guo@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1690196990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eNZFnbjjcHGX9j3TRhdbXR1ssmhOGERohhGmOCzPM9s=;
 b=ExlOBl9ZndxB9vuBn5iyePiHMgl/BFTIThDlr4jERzErQcJ1aUoScj9byL4yWtW8dgz1iy
 G8h9CGp9GB7n3SyXz3rB4alLb1MXLXusvHeeIdhv3TSISE3e/+l7EBrmvFep+OMKz1l6UE
 gs386ISpG2wT4LuP9Ttr8gdmIr1SLJo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ExlOBl9Z
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support double
 vlan mode configure for parser
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
> Add API ice_parser_dvm_set to support turn on/off parser's
> double vlan mode.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 28 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  4 +++
>   drivers/net/ethernet/intel/ice/ice_parser.c   | 29 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
>   4 files changed, 62 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> index bd3ebc8a5f5b..e29c7d6c554b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> @@ -267,3 +267,31 @@ ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat)
>   
>   	return NULL;
>   }
> +
> +static bool _start_with(const char *prefix, const char *string)
> +{
> +	int len1 = strlen(prefix);
> +	int len2 = strlen(string);
> +
> +	if (len2 < len1)
> +		return false;
> +
> +	return !memcmp(prefix, string, len1);
> +}

Isn't there any existing implementation for this general purpose function?
You can use strstarts() function instead of your own implementation.

> +
> +struct ice_bst_tcam_item *
> +ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
> +		    struct ice_lbl_item *lbl_table,
> +		    const char *prefix, u16 *start)
> +{
> +	u16 i = *start;
> +
> +	for (; i < ICE_BST_TCAM_TABLE_SIZE; i++) {
> +		if (_start_with(prefix, lbl_table[i].label)) {
> +			*start = i;
> +			return &tcam_table[lbl_table[i].idx];
> +		}
> +	}
> +
> +	return NULL;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> index 7b69f3b88da5..873ff42fcdb7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> @@ -27,4 +27,8 @@ struct ice_lbl_item *ice_bst_lbl_table_get(struct ice_hw *hw);
>   
>   struct ice_bst_tcam_item *
>   ice_bst_tcam_match(struct ice_bst_tcam_item *tcam_table, u8 *pat);
> +struct ice_bst_tcam_item *
> +ice_bst_tcam_search(struct ice_bst_tcam_item *tcam_table,
> +		    struct ice_lbl_item *lbl_table,
> +		    const char *prefix, u16 *start);
>   #endif /*_ICE_BST_TCAM_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index eddbc80d71fa..33b649a4644a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -343,3 +343,32 @@ void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt)
>   	dev_info(ice_hw_to_dev(hw), "flags_fd = 0x%04x\n", rslt->flags_fd);
>   	dev_info(ice_hw_to_dev(hw), "flags_rss = 0x%04x\n", rslt->flags_rss);
>   }
> +
> +static void _bst_vm_set(struct ice_parser *psr, const char *prefix, bool on)
> +{
> +	u16 i = 0;
> +
> +	while (true) {
> +		struct ice_bst_tcam_item *item;
> +
> +		item = ice_bst_tcam_search(psr->bst_tcam_table,
> +					   psr->bst_lbl_table,
> +					   prefix, &i);
> +		if (!item)
> +			break;
> +		item->key[0] = (u8)(on ? 0xff : 0xfe);
> +		item->key_inv[0] = (u8)(on ? 0xff : 0xfe);
> +		i++;
> +	}
> +}
> +
> +/**
> + * ice_parser_dvm_set - configure double vlan mode for parser
> + * @psr: pointer to a parser instance
> + * @on: true to turn on; false to turn off
> + */
> +void ice_parser_dvm_set(struct ice_parser *psr, bool on)
> +{
> +	_bst_vm_set(psr, "BOOST_MAC_VLAN_DVM", on);
> +	_bst_vm_set(psr, "BOOST_MAC_VLAN_SVM", !on);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
> index d4de0796a292..02ea2ef5fc91 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> @@ -56,6 +56,7 @@ struct ice_parser {
>   
>   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
>   void ice_parser_destroy(struct ice_parser *psr);
> +void ice_parser_dvm_set(struct ice_parser *psr, bool on);
>   
>   struct ice_parser_proto_off {
>   	u8 proto_id; /* hardware protocol ID */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

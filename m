Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294FC440FD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 15:42:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BD3C80C2C;
	Sun,  9 Nov 2025 14:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNkhmoX6wqCn; Sun,  9 Nov 2025 14:41:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B98E3810C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762699310;
	bh=Gko3skdwz3PzuHr6EVAn+8xU/A3lie9sUkM86s2zAks=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U+AJvWRJMGIUCCloQ6K8/8kBzPiXSAWKiEOtxcxsTRpx9hGNKcAOb+CcPC/yc4siT
	 j0ME29INUDi43QvHHXf2eq+wNECqf1je9AIHfJHaNA8xjWXZYRBth/CdWBIpJqONVG
	 hp81IOGGePh7a7GZE8qpX6lEQfk4UcfZMdn+HLc46pIHBREbdwLAh54hpBoNWsU3Pm
	 FZCvBMFmplb3pn/Gj2GEDfBnW4CTZa8ST/hNRgz2VCIBH6dtXpKzU6awBaEgvk4zkC
	 cxitoDQ3cGLi7qpLEbtpxQzNwmJMTCYxQmriFvRgg1XRo3e1BI448CK+thiVPVSFCa
	 FecGEX7njDp4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B98E3810C3;
	Sun,  9 Nov 2025 14:41:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B003A1CD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:41:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2615401D4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:41:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUQP-J08Uudb for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 14:41:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2D6B3400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D6B3400D6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D6B3400D6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 14:41:46 +0000 (UTC)
Received: from [10.0.40.22] (unknown [62.214.191.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B540F61CC3FDB;
 Sun, 09 Nov 2025 15:41:12 +0100 (CET)
Message-ID: <5a9fa920-105b-4707-9e5a-c92e9d7fe49b@molgen.mpg.de>
Date: Sun, 9 Nov 2025 15:41:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: przemyslaw.kitszel@intel.com, aleksander.lobakin@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
References: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251107123956.1125342-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix comment typo and
 correct module format string
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Alok,


Thank you for your patch.

Am 07.11.25 um 13:39 schrieb Alok Tiwari:
> - Fix a typo in the ice_fdir_has_frag() kernel-doc comment ("is" -> "if")
> 
> - Correct the NVM erase error message format string from "0x02%x" to
>    "0x%02x" so the module value is printed correctly.

Listing changes in a commit message is a good indicator to split it up, 
even it’s formal changes.

> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_fdir.c      | 2 +-
>   drivers/net/ethernet/intel/ice/ice_fw_update.c | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 26b357c0ae15..ec73088ef37b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -1121,7 +1121,7 @@ ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
>    * ice_fdir_has_frag - does flow type have 2 ptypes
>    * @flow: flow ptype
>    *
> - * returns true is there is a fragment packet for this ptype
> + * returns true if there is a fragment packet for this ptype
>    */
>   bool ice_fdir_has_frag(enum ice_fltr_ptype flow)
>   {
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index d86db081579f..973a13d3d92a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -534,7 +534,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
>   	}
>   
>   	if (completion_retval) {
> -		dev_err(dev, "Firmware failed to erase %s (module 0x02%x), aq_err %s\n",
> +		dev_err(dev, "Firmware failed to erase %s (module 0x%02x), aq_err %s\n",
>   			component, module,
>   			libie_aq_str((enum libie_aq_err)completion_retval));
>   		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase flash");

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

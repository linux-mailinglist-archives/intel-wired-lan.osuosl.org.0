Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D519A9AC765
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 12:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84D8A80F1C;
	Wed, 23 Oct 2024 10:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0LivHB_i1P6k; Wed, 23 Oct 2024 10:07:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8B0C80F23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729678072;
	bh=REFztZrwVyytKVF3cnxiv4ZR+nlrbCTb5M0Kl+35/NY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sqE4K9F3tMMFVG0SGz1CzngkRyivtn0mFdnpQtyYxV1GAHtkBWjbZLljv+gLNm27r
	 3YMODmWqTqc8sOaCN81TMEmS4ShxMzEx7Y6IVb8nvAXGtS+JO4HhN+HoSH+NutWKZE
	 7KkWSnQ9HtnMpWy8Qh7bsutFr6D4J4qE+Jb2fnHuOykfjcYLdIuwt2NCBG1yufoIyz
	 l9I3A2AuAjOJzIOWwk7Si2E1A6dc/hIS3a53dttk1CXfFdlbCFcVybC4Dj4HMuyPnm
	 z6HUKe3Eb5m1fLuKdCo1aSV2GSvzViaMSdG2PQognhDypXG9K+8WCKeLpq9vPap7Th
	 J2xihGu1fnPyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8B0C80F23;
	Wed, 23 Oct 2024 10:07:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2BC44C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:07:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FCEA4052B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:07:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HeN1XG9TI8Ml for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 10:07:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D06DA4052C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D06DA4052C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D06DA4052C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 10:07:47 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aeec7.dynamic.kabel-deutschland.de
 [95.90.238.199])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 66258600AA698;
 Wed, 23 Oct 2024 12:07:07 +0200 (CEST)
Message-ID: <fd443617-0460-4c44-84a1-3563c0c76033@molgen.mpg.de>
Date: Wed, 23 Oct 2024 12:07:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konrad Knitter <konrad.knitter@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 netdev@vger.kernel.org, jiri@resnulli.us, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-kernel@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
 <20241023100702.12606-2-konrad.knitter@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241023100702.12606-2-konrad.knitter@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] pldmfw: selected
 component update
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

Dear Konrad,


Thank you for your patch.

Am 23.10.24 um 12:07 schrieb Konrad Knitter:
> Enable update of a selected component.

It’d be great if you used that for the summary/title to make it a 
statement (by adding a verb in imperative mood).

It’d be great, if you elaborated, what that feature is, and included the 
documentation used for the implementation. Also, how can it be tested?

> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> ---
>   include/linux/pldmfw.h | 8 ++++++++
>   lib/pldmfw/pldmfw.c    | 8 ++++++++
>   2 files changed, 16 insertions(+)
> 
> diff --git a/include/linux/pldmfw.h b/include/linux/pldmfw.h
> index 0fc831338226..f5047983004f 100644
> --- a/include/linux/pldmfw.h
> +++ b/include/linux/pldmfw.h
> @@ -125,9 +125,17 @@ struct pldmfw_ops;
>    * a pointer to their own data, used to implement the device specific
>    * operations.
>    */
> +
> +enum pldmfw_update_mode {
> +	PLDMFW_UPDATE_MODE_FULL,
> +	PLDMFW_UPDATE_MODE_SINGLE_COMPONENT,
> +};
> +
>   struct pldmfw {
>   	const struct pldmfw_ops *ops;
>   	struct device *dev;
> +	u16 component_identifier;
> +	enum pldmfw_update_mode mode;
>   };
>   
>   bool pldmfw_op_pci_match_record(struct pldmfw *context, struct pldmfw_record *record);
> diff --git a/lib/pldmfw/pldmfw.c b/lib/pldmfw/pldmfw.c
> index 6e1581b9a616..6264e2013f25 100644
> --- a/lib/pldmfw/pldmfw.c
> +++ b/lib/pldmfw/pldmfw.c
> @@ -481,9 +481,17 @@ static int pldm_parse_components(struct pldmfw_priv *data)
>   		component->component_data = data->fw->data + offset;
>   		component->component_size = size;
>   
> +		if (data->context->mode == PLDMFW_UPDATE_MODE_SINGLE_COMPONENT &&
> +		    data->context->component_identifier != component->identifier)
> +			continue;
> +
>   		list_add_tail(&component->entry, &data->components);
>   	}
>   
> +	if (data->context->mode == PLDMFW_UPDATE_MODE_SINGLE_COMPONENT &&
> +	    list_empty(&data->components))
> +		return -ENOENT;
> +
>   	header_crc_ptr = data->fw->data + data->offset;
>   
>   	err = pldm_move_fw_offset(data, sizeof(data->header_crc));


Kind regards,

Paul

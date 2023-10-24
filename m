Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 233A37D5037
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 14:49:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92BD580EFA;
	Tue, 24 Oct 2023 12:49:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92BD580EFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698151787;
	bh=5fotfLrqKqNO3kEgwfeviAFcoaTAEJObYzm8IbGQ1P4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IgdPAF9E4tqrmhhUzbqcLlT50b5x3mgfnGYhfw6puBfBd9K8dP87YSjVV8N3cGAFo
	 1nmCAL40JvIDs+HjJMOs9heTti7Rf7WCdccAJwKokLMt/3gzTt1ObRP4U7sgGLdYOX
	 9hEUX+K6uy5iZmkjsvaEix2Y98v2jdtMaaZDflMk+DLTFsxMdxFK7ddyiFaamB7b9k
	 R2rLNEtM5E+WSGwdPF+GDNFhjltlrTbLbyFxWvBJztqJlpgVi1ZFa8OepeCVg4trSb
	 xxIa8kHt1MCKIC13evBvBE3TCGQv/3QXjpQ1uC4BR8X2/Yx+ayTRuMbmYzBzs5FtIF
	 IcwWLw98kl1Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zvVoMeD5QzXx; Tue, 24 Oct 2023 12:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79F8280A75;
	Tue, 24 Oct 2023 12:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79F8280A75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11E3C1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8276848DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:49:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8276848DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12x_pWO6dt1C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 12:49:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10691848D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10691848D7
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-vJLQkFovPimUQaMJtn9_zQ-1; Tue, 24 Oct 2023 08:49:22 -0400
X-MC-Unique: vJLQkFovPimUQaMJtn9_zQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23920185A790;
 Tue, 24 Oct 2023 12:49:22 +0000 (UTC)
Received: from [10.43.2.183] (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C6D9B2166B26;
 Tue, 24 Oct 2023 12:49:20 +0000 (UTC)
Message-ID: <349d8eb5-b499-45ea-8de5-2c3658d4c446@redhat.com>
Date: Tue, 24 Oct 2023 14:49:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
References: <20231024124245.837908-1-ivecera@redhat.com>
Content-Language: en-US
In-Reply-To: <20231024124245.837908-1-ivecera@redhat.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698151778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UVRePymm5LlGxEOZU5dUiW35O7/1kIgQIOIIucxo4g8=;
 b=IWf8VyOC/dmlcAsnAEgeDgaHWoISDhg/HwHu84hqKLXu/P5f7Qu86Ac45ulckG6/jJWlvV
 jB1vL3iyx7WonS5P+cnB0l4/s3Z8a0xsHv/mSGuoZ2rZQC2zaqu6hdKHRM9K9u2emmWVm1
 GS8BbQH3Qq6uEyiIAEYy2iMP4+VCI3o=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IWf8VyOC
Subject: Re: [Intel-wired-lan] [PATCH 1/2] i40e: Do not call
 devlink_port_type_clear()
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 24. 10. 23 14:42, Ivan Vecera wrote:
> Do not call devlink_port_type_clear() prior devlink port unregister
> and let devlink core to take care about it.
> 
> Reproducer:
> [root@host ~]# rmmod i40e
> [ 4539.964699] i40e 0000:02:00.0: devlink port type for port 0 cleared without a software interface reference, device type not supported by the kernel?
> [ 4540.319811] i40e 0000:02:00.1: devlink port type for port 1 cleared without a software interface reference, device type not supported by the kernel?
> 
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index 74bc111b4849..cc4e9e2addb7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -231,6 +231,5 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
>    **/
>   void i40e_devlink_destroy_port(struct i40e_pf *pf)
>   {
> -	devlink_port_type_clear(&pf->devlink_port);
>   	devlink_port_unregister(&pf->devlink_port);
>   }

Please drop... there is missing net-next target.
Will post v2.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

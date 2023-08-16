Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B45977DD0C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 11:14:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBDED4158D;
	Wed, 16 Aug 2023 09:14:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBDED4158D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692177268;
	bh=o5jF4+s/Jc7DgtukFQ5+B3yp5URMcNE3ArhldFJzbFw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5ffEKJra+Ft/JFHxdkqilSobotgdKCeghDOo7lodbmr/qjGXBVAMW65zjS08V2hok
	 GYTBFWP6pWqcXuaUAG7BjFZs3WQ4gHLcONZejMBeGFFD9Xxf8T1p5p41iot/hqukPl
	 cHSP1YTSkPfke4SOaPJxGqp9OzOr9ZVn0Kprcr7eiW3p6pZojng3eg16rZ3zXFf0O8
	 D9j4JxRY3DUFn1T1wnHAHPcmBx+QNH/eU/o+MbOCa0isegHA6YZWUtr1biuH8Cu1j2
	 wQ+mYcBPHi2wpoJlbDzF+fT7WquC7XxPrl8CZrzqN9aJhDZosl+ZrmBp5Q3/SFJ+ma
	 pqH4mg1v06GYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r9TOfkaHy5GI; Wed, 16 Aug 2023 09:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DBDD54157E;
	Wed, 16 Aug 2023 09:14:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBDD54157E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211601BF310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 09:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED79C4157E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 09:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED79C4157E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zuqarRIZWcny for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 09:14:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56F1E4044F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 09:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56F1E4044F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3608C659CD;
 Wed, 16 Aug 2023 09:14:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F7EEC433CA;
 Wed, 16 Aug 2023 09:14:18 +0000 (UTC)
Date: Wed, 16 Aug 2023 11:14:16 +0200
From: Simon Horman <horms@kernel.org>
To: Wenjun Wu <wenjun1.wu@intel.com>
Message-ID: <ZNyTaPtGSsEIHLXe@vergenet.net>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230816033353.94565-1-wenjun1.wu@intel.com>
 <20230816033353.94565-6-wenjun1.wu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230816033353.94565-6-wenjun1.wu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692177259;
 bh=37eOs8xTqJRLNlEmM1vit1aHCveYzgXLxOs2wviDOjo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QhsipXjby4kC4pHODKOPzPF0Zf2SXinRhtfkaW9IYoex4TDg8I053r7cz1No0FDDz
 bOXun6q46fRwNL96AbLOqsNtnwcO8woSdpW0VEsGz5ueA+nRJ94cW+DDA9qRpt+iup
 ps3sa6y9u3VDuyNl3/Q1J0TK66AMddX2OWUkfTI7qVsDUrtPJtEZRrKO7L7hGoRhuB
 icv5Cb1+9dTEubm82JXTR3XK18DlZiX+xtzHg7JNPOwyquu1knfHYLmtVwP4DposeK
 ve9uQadkY3wP7HFDIVh4hZuPgobQroXV7CdhvjRGF8xNPW/NeOZsNScZQeJM1q4i85
 xlpm4QE1xyISQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QhsipXjb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] iavf: Add VIRTCHNL
 Opcodes Support for Queue bw Setting
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 16, 2023 at 11:33:53AM +0800, Wenjun Wu wrote:
> From: Jun Zhang <xuejun.zhang@intel.com>
> 
> iavf rate tree with root node and queue nodes is created and registered
> with devlink rate when iavf adapter is configured.
> 
> User can configure the tx_max and tx_share of each queue. If any one of
> the queues have been fully updated by user, i.e. both tx_max and
> tx_share have been updated for that queue, VIRTCHNL opcodes of
> VIRTCHNL_OP_CONFIG_QUEUE_BW and VIRTCHNL_OP_CONFIG_QUANTA will be sent
> to PF to configure queues allocated to VF if PF indicates support of
> VIRTCHNL_VF_OFFLOAD_QOS through VF Resource / Capability Exchange.
> 
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c

...

> @@ -5005,10 +5035,18 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Setup the wait queue for indicating virtchannel events */
>  	init_waitqueue_head(&adapter->vc_waitqueue);
>  
> +	len = struct_size(adapter->qos_caps, cap, IAVF_MAX_QOS_TC_NUM);
> +	adapter->qos_caps = kzalloc(len, GFP_KERNEL);
> +	if (!adapter->qos_caps)

Hi Jun Zhang and Wenjun Wu,

The goto below leads to the function returning err.
Should err be set to an error value here?

As flagged by Smatch and Coccinelle.

> +		goto err_ioremap;
> +
>  	/* Register iavf adapter with devlink */
>  	err = iavf_devlink_register(adapter);
> -	if (err)
> +	if (err) {
>  		dev_err(&pdev->dev, "devlink registration failed: %d\n", err);
> +		kfree(adapter->qos_caps);
> +		goto err_ioremap;
> +	}
>  
>  	/* Keep driver interface even on devlink registration failure */
>  	return 0;

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

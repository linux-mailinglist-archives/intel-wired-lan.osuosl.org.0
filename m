Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C7B3FDC4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 13:27:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 953A541A30;
	Tue,  2 Sep 2025 11:27:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eZH-MDYN2XHE; Tue,  2 Sep 2025 11:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 130DC41A34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756812458;
	bh=KjuMAF6x2C7Y8qlg9yXCuClA+VXqEPKyCJn/KO2TycM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IQWomEkM+FVYAEzxyf06xRr5fwOaDDvWWMqVlxFTwshvK2EQtDqOdDZtpf8qunZoW
	 XrMEFczRZJaUgvu6Fx/Z3hsv5z6yUJLMA8oTeUIxGK/0aeIuUM7LPQfX9NQobvWn5V
	 W8IAKrd+Hvae/5Mpgr8u+JOBRupLaCJpvoRTwULD1EmJHodKddUemnsG1AcxPqYIOx
	 QBahUce8a0UXeJWDLPn1GSK6FiUDaDS4siUZbgcahzjTYMld6Yr7uCuRy6MrEKOr/0
	 9lpJ/UIAJ0JMXRf5l/4OAI6QrLRaVXaVMClyAsi9G+0GLF7SfNBQDAaTB2cLeG8hfJ
	 2icedh1gIYEhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 130DC41A34;
	Tue,  2 Sep 2025 11:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 72836439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AA1241A2C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtQYWVxNJdQ3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 11:27:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::bc; helo=out-188.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B1C5F4192B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1C5F4192B
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::bc])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1C5F4192B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:27:35 +0000 (UTC)
Message-ID: <26c0cd9c-ad24-4b71-9a1a-d046b94d9333@linux.dev>
Date: Tue, 2 Sep 2025 12:27:29 +0100
MIME-Version: 1.0
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Willem de Bruijn <willemb@google.com>
References: <20250902105321.5750-1-anton.nadezhdin@intel.com>
 <20250902105321.5750-3-anton.nadezhdin@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250902105321.5750-3-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756812452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KjuMAF6x2C7Y8qlg9yXCuClA+VXqEPKyCJn/KO2TycM=;
 b=xCx54zKiy5JYlY4xA0reccCPyd3bSu+DqnFgijhn3sU3m6TiLAn7WqXLEDj/KMNDnPbQi2
 3Jc4V0EcRGg4a7F+5NdGzv+TxF+Ty7FmVJuPiVwZ025yzb0yNpRv6teShuq+i+4vCzx5c4
 X/QcOQJGrVIoi+WMLcvUj1LPC8skWtg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=xCx54zKi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add direct method
 for disciplining Tx timestamping
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

On 02/09/2025 11:50, Anton Nadezhdin wrote:
> From: Milena Olech <milena.olech@intel.com>
> 
> Currently IDPF supports only mailbox access to PHC operations and
> Tx timestamping, however the driver shall also be able to handle direct
> access. The difference is that PHC/timestamps actions are performed
> directly, through BAR registers, instead of sending a virtchnl message to
> CP. Registers offsets are negotiated with the CP during the capabilities
> negotiation.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

[...]

> -static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb)
> +static void idpf_tx_read_tstamp(struct idpf_tx_queue *txq, struct sk_buff *skb,
> +				u32 buf_id)
>   {
>   	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> -	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status;
> +	struct idpf_ptp_tx_tstamp_status *tx_tstamp_status = NULL;

this breaks reverse x-mass tree aligment...

> +	enum idpf_ptp_access access;
> +	int err;

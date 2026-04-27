Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHDAIjY972mD+gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 12:40:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B5B47121D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 12:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E6D585186;
	Mon, 27 Apr 2026 10:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vy2q9MbZADXJ; Mon, 27 Apr 2026 10:40:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 030C5851A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777286450;
	bh=1awmovS6Yf6Mv/ja8hVRXRLENoAVc+c5LE5Mx5uIPpE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=luSBws968+y14o2Nbch+Lb00UgADK/s2YGtl1ZhnuzF50GdfCeNY2ua+ogzCCayMq
	 C1BZ+BacnYObDC4uE0QxLutFVuhcwxOAo7uNqqsVoDs8vxQz1WKM+6bG511gPOcnFT
	 dLdBJwO3BfWvL7hkgnreveZyEVXghcsXE1yVm5+ylfBFOLud3Yf42CwQu/niyzxoHz
	 NJqsldSaQwVs/KEWSbwzVG/HNRsdls1dwyKavLjQEZNH+RpIYIG8Lbwp2S3VyUr4fU
	 lvgVtH9j8LMx5kV4toe03T1oaJ4iklxwxOO6sbWy6bibNJEcV4cyFyU5ZiK0IKfF/I
	 GbGZ3QmVuj/GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 030C5851A2;
	Mon, 27 Apr 2026 10:40:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 680B52DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 10:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58A566F66B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 10:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hXzqhNxA6XPq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 10:40:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D173861725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D173861725
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D173861725
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 10:40:45 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EB4764C2C37D45;
 Mon, 27 Apr 2026 12:40:17 +0200 (CEST)
Message-ID: <2d8bd703-f368-4405-9266-d0d8824455aa@molgen.mpg.de>
Date: Mon, 27 Apr 2026 12:40:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
References: <20260424031545.3777023-1-boolli@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260424031545.3777023-1-boolli@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: 00B5B47121D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[molgen.mpg.de:mid,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]

Dear Li,


Thank you for your patch.

Am 24.04.26 um 05:15 schrieb Li Li via Intel-wired-lan:
> Virtchnl failures can be hard to debug without logs. Logging the details
> of virtchnl transactions can be useful for debugging virtchnl-related
> issues.

Why is the first added one added as error, and the second as info?

Do you have a reproducer to get each of the new log messages?

> Tested: Built and booted on a test machine.

Please paste the new messages.

> Signed-off-by: Li Li <boolli@google.com>
> ---
>   drivers/net/ethernet/intel/libie/controlq.c | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/ethernet/intel/libie/controlq.c
> index ebc05355e39d..7eaa77413621 100644
> --- a/drivers/net/ethernet/intel/libie/controlq.c
> +++ b/drivers/net/ethernet/intel/libie/controlq.c
> @@ -762,6 +762,16 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv_params *params,
>   	status = ctlq_msg->chnl_retval ? -EFAULT : 0;
>   
>   	xn = &xnm->ring[xn_index];
> +
> +	if (ctlq_msg->chnl_retval) {
> +		dev_err_ratelimited(
> +			params->ctlq->dev,
> +			"Non-zero virtchnl ret val (msg op: %u, ret val: %u, msg_cookie: %u, data_len: %u); xn op: %u, id: %u, cookie: %u\n",
> +			ctlq_msg->chnl_opcode, ctlq_msg->chnl_retval,
> +			msg_cookie, ctlq_msg->data_len, xn->virtchnl_opcode,
> +			xn->index, xn->cookie);
> +	}
> +
>   	if (ctlq_msg->chnl_opcode != xn->virtchnl_opcode ||
>   	    msg_cookie != xn->cookie)
>   		return false;
> @@ -1011,6 +1021,11 @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params)
>   		params->recv_mem = xn->recv_mem;
>   		break;
>   	default:
> +		dev_notice_ratelimited(
> +			params->ctlq->dev,
> +			"Transaction failed (op %u, xn state: %d, id: %u, cookie: %u, size: %zu)\n",
> +			params->chnl_opcode, xn->state, xn->index, xn->cookie,
> +			xn->recv_mem.iov_len);
>   		ret = -EBADMSG;
>   		break;
>   	}


Kind regards,

Paul

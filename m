Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32427950D23
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 21:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A4C340AFD;
	Tue, 13 Aug 2024 19:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T14nEhd7VyVl; Tue, 13 Aug 2024 19:29:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D7BA40B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723577375;
	bh=+h/CoT8nZstbOJ0D4xe/hiWbwTGNNbob7NpFVzMvjXs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jmtFDuAeBtclPfGOKtw1sEZxzHefvwD2/G3qMeYAOG3yyYWSIt/9rsaoUHU2CZ/tp
	 7Jx7vQYnC1jw8gIbVz8WuB7hut7Kse6gRFFp5l0KrRlvDMbWmgB/k+77v313miYyae
	 FjPue+1IXp9HBYdPld3gzmU0llqKVm7OgXlCEBsaAsiAma7SBLXrQl3ZZA35kiNXGY
	 DVoGeVnOeUQRz38qQ2GQyz8dkaRu27CSSISI6Zg8eCsKrxH6YTmUl/1HtBlJN/0MY2
	 VhisDaw41A1+cL295cRF2F5h5lBDhiamvx556AvMzxyPhZF+yhSSokbeCnC6ipS/KW
	 7OzCY2GaFW48A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D7BA40B01;
	Tue, 13 Aug 2024 19:29:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEA971BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B75CA401CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pl-5fH4HyV_P for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 19:29:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 196AB40112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 196AB40112
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 196AB40112
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:29:30 +0000 (UTC)
Received: from [10.20.146.172] (guest-ext.mpip-mainz.mpg.de [194.95.63.236])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BB2F061E5FE05;
 Tue, 13 Aug 2024 21:28:58 +0200 (CEST)
Message-ID: <ab88280b-a775-4833-92a9-42069d5d0350@molgen.mpg.de>
Date: Tue, 13 Aug 2024 21:28:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>
References: <20240813182747.1770032-1-manojvishy@google.com>
 <20240813182747.1770032-5-manojvishy@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240813182747.1770032-5-manojvishy@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1 4/5] idpf: more info during
 virtchnl transaction time out
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, google-lan-reviews@googlegroups.com,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Manoj,


Thank you for your patch.

It’d be great if you made the summary a statement, that means, adding a 
verb (in imperative mood), like:

idpf: Add more info during virtchnl transaction timeout

Am 13.08.24 um 20:27 schrieb Manoj Vishwanathan:
> Add more information related to the transaction like cookie, vc_op, salt
> when transaction times out and include info like state, vc_op, chnl_opcode
> when transaction salt does not match.
> 
> Sample output for transaction timeout:
> -------------------
> Transaction timed-out (op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
> -------------------
> 
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 30eec674d594..07239afb285e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -517,8 +517,9 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
>   		retval = -ENXIO;
>   		goto only_unlock;
>   	case IDPF_VC_XN_WAITING:
> -		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
> -				       params->vc_op, params->timeout_ms);
> +		dev_notice_ratelimited(&adapter->pdev->dev,
> +				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
> +				       params->vc_op, cookie, xn->vc_op, xn->salt, params->timeout_ms);
>   		retval = -ETIME;
>   		break;
>   	case IDPF_VC_XN_COMPLETED_SUCCESS:
> @@ -615,8 +616,8 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
> -		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
> -				    xn->salt, salt);
> +		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
> +				    xn->vc_op, xn->salt, xn->state, ctlq_msg->cookie.mbx.chnl_opcode, salt);
>   		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}


Kind regards,

Paul

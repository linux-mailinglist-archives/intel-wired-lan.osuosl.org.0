Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F12089F0801
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 10:37:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 753046072D;
	Fri, 13 Dec 2024 09:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YyLALhvpGAYE; Fri, 13 Dec 2024 09:37:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3C1A61091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734082632;
	bh=azfLNpP8XGIZrAR9pQV+K0986oKw2f7ddSwMRpYnoZ0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YtfssAxb4oFh3E68YXC6mPc24PGGPWLl7Wi+BrQ1X8jmfEfOHp623U9KM5MajJfJX
	 SYq8RSEB5I5FsAvZpB9JBi0QamSb5hWxnyBNdz0hBbbk3QwlRO2OoLJChj0Int6V+q
	 pO8gwIpZOAsTJtWWVjjgt8N4Xb4mV68h6I1Tnr/Z5g+zNOVBge1LHTTIQ9h0h4tG7a
	 530haR0vQQD1oLme3GMUMYAUCZu/TBSGShTmf5cqsnXQtxHzumw2R2+yy+MSghPyiB
	 KEaiEcDvouRt06j6W1mBlgO3S/qSc0KkzuE8x8CohsLYv2e2z6m4AsF0Dl6qM5LNt3
	 lXDdW8s0yfzSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3C1A61091;
	Fri, 13 Dec 2024 09:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D9A6ECD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 09:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86580408ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 09:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vd7nNRoWjuVi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2024 09:37:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1D96C405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D96C405AB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D96C405AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 09:37:07 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af5e3.dynamic.kabel-deutschland.de
 [95.90.245.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2C6AE61E646F9;
 Fri, 13 Dec 2024 10:36:42 +0100 (CET)
Message-ID: <bc95ab79-6b4a-41be-b5b7-daaec04f23d0@molgen.mpg.de>
Date: Fri, 13 Dec 2024 10:36:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 Vivek Kumar <vivekmr@google.com>, Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
References: <20241212233333.3743239-1-brianvv@google.com>
 <20241212233333.3743239-4-brianvv@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241212233333.3743239-4-brianvv@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next PATCH v3 3/3] idpf: add more info
 during virtchnl transaction time out
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

Dear Brian, dear Manoj,


Thank you for your patch.

Am 13.12.24 um 00:33 schrieb Brian Vazquez:
> From: Manoj Vishwanathan <manojvishy@google.com>
> 
> Add more information related to the transaction like cookie, vc_op,
> salt when transaction times out and include similar information
> when transaction salt does not match.

If possible, the salt mismatch should also go into the summary/title. Maybe:

idpf: Add more info during virtchnl transaction timeout/salt mismatch

> Info output for transaction timeout:
> -------------------
> (op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
> -------------------

For easier comparison, before it was:

(op 5015, 60000ms)

> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 13 +++++++++----
>   1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 13274544f7f4..c7d82f142f4e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -517,8 +516,10 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
>   		retval = -ENXIO;
>   		goto only_unlock;
>   	case IDPF_VC_XN_WAITING:
> -		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
> -				       params->vc_op, params->timeout_ms);
> +		dev_notice_ratelimited(&adapter->pdev->dev,
> +				       "Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
> +				       params->vc_op, cookie, xn->vc_op,
> +				       xn->salt, params->timeout_ms);
>   		retval = -ETIME;
>   		break;
>   	case IDPF_VC_XN_COMPLETED_SUCCESS:
> @@ -615,8 +613,9 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
> -		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
> -				    xn->salt, salt);
> +		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
> +				    xn->vc_op, xn->salt, xn->state,
> +				    ctlq_msg->cookie.mbx.chnl_opcode, salt);
>   		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

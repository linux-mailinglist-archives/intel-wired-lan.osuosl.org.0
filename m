Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED02480E9C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Dec 2021 02:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC26B40873;
	Wed, 29 Dec 2021 01:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l8mRFn10PCg9; Wed, 29 Dec 2021 01:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6C4240879;
	Wed, 29 Dec 2021 01:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 355651BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 01:33:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FE724049F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 01:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjVclNmwYfpW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Dec 2021 01:33:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com
 [IPv6:2607:f8b0:4864:20::a34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D72D40491
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Dec 2021 01:33:50 +0000 (UTC)
Received: by mail-vk1-xa34.google.com with SMTP id 70so11208636vkx.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Dec 2021 17:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=IBcil9O+VRrBlwSK9WQFnnXvi87jfhzw0Yvv4tQzzQ4=;
 b=noDIEQ8P8sUYyX/OE18Q5FGCEdOtXRbYUWogiKJXUl19FWceFTLSzy33NO7370WsVb
 xNtywJS1aHmXYo/ZkLPfxpKAuLKxK4YE+eVz8VTkizITqKtfycFbgYZ8mkgMJWEJt21+
 SNTUf5JrpwvWrXhCSoo6DxEmJYz1lYAcgrZn5Siak7Xevszf8m10NCTaN+zXiqI+KIS/
 Eu3eNT4oCfEFd0fiD/WXOlhQ5EblQr9RpaZdLMvylKbA5ymBdmZHyFsCK1nxmVisoAn9
 uYVylo+Wo6Qmr7pTJyQxMeOn82Ns+dOHizKeng6bH3WIfBKj/q/NPdRFTbbgDlFIWhAW
 0Xqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IBcil9O+VRrBlwSK9WQFnnXvi87jfhzw0Yvv4tQzzQ4=;
 b=1g1sB3FFm1rCP/63S998nkXJwDVZw/ur4y6aZPyz5IuWULEcpie1GBdIjNEEETJpoA
 ZSkjZvnubBrmdQQ5fUlfwtQWcMNUSEuAa+rAi8x0JOKe4Slbdgd4meG6VEmFqFJEetAN
 PVZOhBaWp16RPPDZqxwlhBggtjoE+KK2u9lAEubPjtK/oc8Dj0vWGrBQ9ysxZHJZVena
 ClNqxTydK5v2HEKAk9D1dDTgJb2sUKoNN8N7qpRyzqUh5riYYf8BW321FuMGJXe4u01P
 lUAHMsKqkE09kGzS9qKlxVpSdjskSczER74SCiwH2PtUhLD04qz2T0KgDFs7Dt9jVt9q
 8tBw==
X-Gm-Message-State: AOAM533HxzahLrOxq67CTOb3Pb2w8fyeS0ZCLN6sQIwsJo5T73EPh3pM
 75nEPFNU/WrbfpAVhj3mYN4=
X-Google-Smtp-Source: ABdhPJwKKoiH34wYig8kLDUOCk3RH8x02XOvCc3/C+ewf+rsM//1r3lSXc1Bk8D6hTuZbPILWEIFJw==
X-Received: by 2002:a1f:9f04:: with SMTP id i4mr7411735vke.33.1640741629056;
 Tue, 28 Dec 2021 17:33:49 -0800 (PST)
Received: from [10.230.2.158] ([192.19.161.250])
 by smtp.gmail.com with ESMTPSA id d15sm3964460vsb.18.2021.12.28.17.33.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Dec 2021 17:33:48 -0800 (PST)
Message-ID: <5a82690c-7dc0-81de-4dd6-06e26e4b9b92@gmail.com>
Date: Tue, 28 Dec 2021 17:33:39 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, ast@kernel.org, daniel@iogearbox.net
References: <20211229004913.513372-1-kuba@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20211229004913.513372-1-kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2] net: don't include
 filter.h from net/sock.h
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
Cc: andrew@lunn.ch, mustafa.ismail@intel.com, linux-wireless@vger.kernel.org,
 ath11k@lists.infradead.org, pablo@netfilter.org, andrii@kernel.org,
 george.mccollister@gmail.com, ralf@linux-mips.org, linux-hams@vger.kernel.org,
 hawk@kernel.org, steffen.klassert@secunet.com, linux-s390@vger.kernel.org,
 pkshih@realtek.com, herbert@gondor.apana.org.au, leon@kernel.org,
 linux-bluetooth@vger.kernel.org, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, john.fastabend@gmail.com,
 kadlec@netfilter.org, jgg@ziepe.ca, dledford@redhat.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org, nikolay@nvidia.com,
 habetsm.xilinx@gmail.com, yzaikin@google.com, vivien.didelot@gmail.com,
 wg@grandegger.com, sgarzare@redhat.com, woojung.huh@microchip.com,
 johan.hedberg@gmail.com, arnd@arndb.de, marcel@holtmann.org, jhs@mojatatu.com,
 linux-can@vger.kernel.org, wenjia@linux.ibm.com,
 Marc Kleine-Budde <mkl@pengutronix.de>, viro@zeniv.linux.org.uk,
 luiz.dentz@gmail.com, jiri@nvidia.com, xiyou.wangcong@gmail.com,
 michael.chan@broadcom.com, virtualization@lists.linux-foundation.org,
 shiraz.saleem@intel.com, trond.myklebust@hammerspace.com, kvalo@codeaurora.org,
 linux-nfs@vger.kernel.org, wintera@linux.ibm.com, keescook@chromium.org,
 netdev@vger.kernel.org, dsahern@kernel.org,
 linux-decnet-user@lists.sourceforge.net, fw@strlen.de, tariqt@nvidia.com,
 kgraul@linux.ibm.com, ecree.xilinx@gmail.com, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, jreuter@yaina.de,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, olteanv@gmail.com,
 saeedm@nvidia.com, anna.schumaker@netapp.com, ap420073@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/28/2021 4:49 PM, Jakub Kicinski wrote:
> sock.h is pretty heavily used (5k objects rebuilt on x86 after
> it's touched). We can drop the include of filter.h from it and
> add a forward declaration of struct sk_filter instead.
> This decreases the number of rebuilt objects when bpf.h
> is touched from ~5k to ~1k.
> 
> There's a lot of missing includes this was masking. Primarily
> in networking tho, this time.
> 
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>

It would be nice if we used the number of files rebuilt because of a 
header file change as another metric that the kernel is evaluated with 
from release to release (or even on a commit by commit basis). Food for 
thought.
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

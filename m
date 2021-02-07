Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D869B312137
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Feb 2021 05:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA4B8204FD;
	Sun,  7 Feb 2021 04:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoX-MnCZEE+I; Sun,  7 Feb 2021 04:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 87EA8204F9;
	Sun,  7 Feb 2021 04:07:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F037C1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 04:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EAA3186A0B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 04:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lz89e2EIBb-m for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Feb 2021 04:07:37 +0000 (UTC)
X-Greylist: delayed 00:07:36 by SQLgrey-1.7.6
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0A3286717
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 04:07:36 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id o193so1679558qke.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 06 Feb 2021 20:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=coverfire.com; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Q22JhiwcaSGArBGf3mgckTKWphhDteJcA7Wg8NGUyNQ=;
 b=mQBM+ccnzuh4NzXNe+6y5Iz/lmDaNh+ruUxKT1H2XxSLPQ3miOylKS+Yab4qNp0EXq
 q7Ag7C6OoTrLcQtAseR+t4ktn9/a1g/pwNqYQnRAxwzJ8L2+SOxSbGwU7UbXxJdvZk8n
 K0G+PJaIPuzaDApuH6w6FfiXCTY2BFu9Vh/88ezlbjThUfWPrM+wMyxED3mR097fAZWo
 gxlN/TiW4U/AEwydaAeGuaKVLtqHcRFxrBLisctHA0NtZKiNCrS1wN1QpNcGO69kGThC
 oZ9BlT4vF/1544RTlW1y1X4DOfRTxaaqy/WjdKn4WkoYk7U8GMVfS1YXkzYzJMv79Vfw
 7gEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Q22JhiwcaSGArBGf3mgckTKWphhDteJcA7Wg8NGUyNQ=;
 b=kGreiZIVh9DTIX8ZjjL1hC/lMwbyfuRddKZ0BzjYlS3J6oq//x6vJZLNDY2JYAE3w4
 Ieea+gsPMdKgILtFarYv9cJfbKhfKXKUxK9rkUMAfbs/N5tFfoE3FyyPLeKr/BmmId8w
 OmcidhUt8+aong3FoPv5rLIoIIvjXnJjnOlA8AvuG00uUsdea2BpPcdLr4d5yo5XzB8W
 bE+mNIwviC92szIFm35/EoLGTXzt03mEGrpBOeSO+RY+Whbu/B2V8EWi9qh08qvMHFxE
 46ttsehfyfzQ1KF3QPbTyYCBY2dDT7yzJxoEzKTy/EJkHZ/aJ3snj3NQf0Ou5gI/H84x
 Lxgw==
X-Gm-Message-State: AOAM532p4SceovBUfQuJuUnJTcRVPTD/wZVHcRfPLZdJGI5klJZXLrWf
 UjCKKR7oCSmjc6g5I7vzQ76hiSVk5lhI3Q==
X-Google-Smtp-Source: ABdhPJxSQE5Qf3BF+LenVxF/py5gFhsCWwHXRa2N0u0idAhVesRUJ/wRKmx+8dgxBbxUhDj8eZzBkQ==
X-Received: by 2002:a37:555:: with SMTP id 82mr11497850qkf.320.1612670399486; 
 Sat, 06 Feb 2021 19:59:59 -0800 (PST)
Received: from ?IPv6:2607:f2c0:e56e:28c:5524:727c:ba55:9558?
 ([2607:f2c0:e56e:28c:5524:727c:ba55:9558])
 by smtp.gmail.com with ESMTPSA id v18sm13821554qkv.62.2021.02.06.19.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Feb 2021 19:59:58 -0800 (PST)
Message-ID: <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
From: Dan Siemon <dan@coverfire.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Date: Sat, 06 Feb 2021 22:59:56 -0500
In-Reply-To: <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 2021-02-07 at 02:24 +0000, Brandeburg, Jesse wrote:
> Hi Dan, I am asking around to see what we can do, will get back to
> you in the coming week.

Thanks. I was looking at some old Intel presentations that sort of
hinted that the PPPoE DDP profile might support double VLANs. I've been
experimenting with that today without luck so far. The profile loads
fine (via ethtool) but I don't see any change in the traffic
distribution.

The GTP DDP package documentations says:

"To enable RSS for GTPv1-U with the IPv4 payload we need to map packet
classifier type 22 to the DPDK flow type. Flow types are defined in
rte_eth_ctrl.h; the first 21 are in use in DPDK 17.11 and so can map to
flows 22 and up. After mapping to a flow type, we can start to port
again and enable RSS for flow type 22:"

I haven't been able to find anything that hints at how to do something
like that outside of DPDK.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

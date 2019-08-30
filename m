Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E9A3A7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12FC320502;
	Fri, 30 Aug 2019 15:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6UeQYcCHs7Kr; Fri, 30 Aug 2019 15:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4014A204FC;
	Fri, 30 Aug 2019 15:37:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA0DE1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C5F5586FCC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gEe4w31HFGR8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:37:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 411BD86FC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:37:34 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q139so4855306pfc.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=J1+aQtXQNIaR051t0YQMFgBHKHuNGy2PCmvkkEIfppA=;
 b=rEGc2nwRRM6MwCrPk8Cx4X/sHeLm/4zqTp4G0MfMD4l0PoxJEpviyLoQsO+DK5xmG5
 DIUcXzMuuDHxvfm1XIUmVdQu84Edwx94oqBTjhMMgrAlW7NDJuRTv9LYQlJwEIY+g8gO
 FaZ2zUsST9QKNfY/5ca8szL8kJD/JJjhw8b3AFact6THoKXFA82WZDkxzOOpyNTFY/qY
 YcCNllVIHZvq3qKqeBMyYiXZexc6/IuVDGSUL6gc7RfrD69r9GQKEXkNXMPCVctqCAZa
 b+OCooNouVDvMGAosdN0LKEZWT4Xl9K53fjMCrVDbE745grFBL7NEj1UpNEvFsET/05x
 bHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=J1+aQtXQNIaR051t0YQMFgBHKHuNGy2PCmvkkEIfppA=;
 b=hMVlILTJFrM2HICz5wR4Xg9o1HLjKrzi7VYCj+c3hhxW89NxXPWUiB5DE60ql4trOF
 dBfT/nNrOlEoLPvwTs70IoZkydiO62rJ1FY+FudzWAx2T0ZwUzhUxFSRxFgpQY3igknL
 wMEfaejD0etaj+7ZBKHQXQyyx571+j2Sp1t1xsNw77x8Vhn3vmUMv2yACwNyGXCoPhoO
 mzOKWMK47VBLGYf59Yp1/v2kSsGLOTD8XOdBXxb0vcR98IqrnX1MNRb9XVYJ4JUmcnm4
 QEjGuG/vwQ9tDJKQY6LQKuenh5Nk40xbgWdcSkXXXHlV/iVAIqzKn5RLZlKltIeL+oPz
 /Unw==
X-Gm-Message-State: APjAAAWkG5S9zFfi+Bwq3AezWhtfondwG3cM4/FYvpHA6wIN+GSBi7dD
 4Z98UlNU3nzVROcc7q3ROnQ=
X-Google-Smtp-Source: APXvYqzZe0JS0h4ppWeILzp7mHlppyvlyy8M20qzjGwQlZze3h2zOdaLaAUrNmzEqnyXpKozKCqTmw==
X-Received: by 2002:aa7:9d8d:: with SMTP id f13mr4489891pfq.196.1567179453940; 
 Fri, 30 Aug 2019 08:37:33 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id k64sm9778889pge.65.2019.08.30.08.37.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:37:33 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:37:31 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <F8E0DEC3-B5A4-4546-A0E4-686877113546@gmail.com>
In-Reply-To: <20190827022531.15060-2-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-2-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 01/12] i40e: simplify Rx
 buffer recycle
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> Currently, the dma, addr and handle are modified when we reuse Rx buffers
> in zero-copy mode. However, this is not required as the inputs to the
> function are copies, not the original values themselves. As we use the
> copies within the function, we can use the original 'old_bi' values
> directly without having to mask and add the headroom.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

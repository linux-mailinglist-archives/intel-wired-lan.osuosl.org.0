Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B3F2DE781
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 17:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D94D986F78;
	Fri, 18 Dec 2020 16:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JC-NgrViOntC; Fri, 18 Dec 2020 16:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3939E8759C;
	Fri, 18 Dec 2020 16:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 764071BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DBBA877ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfVhCISt462N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 16:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F438877AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 16:31:40 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id t8so2556618iov.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 08:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=nSlVQnZ/2SWUp29r9pBICirmtu2RnGb3X3jpm+IFoMU=;
 b=IPiSwWTYFA+ZG4wybbTEQRvAXwBLTf26eqNmyl2l8A9W/b78XjpvjYYvLPj+uq3fD8
 0lXMdEme51cEzicqv6Sfay7SEjEe9tH1gTCDyStHuy5Rb5XSwzKmEIGNxXmRdCLjZ2lP
 RBSQxnk6QPNep6izTB1BRa7bW18rK85TFEVD2lhw+o9N8vItdM2+mtcpPQO7A72+d7Sn
 viovY0Ytl3vj6IKxW75GS/0hnWEPekUAq1m1ojNJEKAtw9GMldUEu4/Hp0HNk7ucIanG
 X7geEy0vs5sc7bi/WQMO8R8Bm3iF4tjfFbJ7vHoMDadPGE1/BZt2sKAjtKpOc2Q8kqB2
 BolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=nSlVQnZ/2SWUp29r9pBICirmtu2RnGb3X3jpm+IFoMU=;
 b=Kau8ZJcxU1jXR2LmxZZTflgHVUBmzFAZr21AM5BFpyPmUAa3/fX5AJ7sO5qjvfBeTa
 K6VmlCDjLN9XKXalAaQISlOfLX/IhcQ37XMvIMyh/hBRQ9mEdo7joAlJkinS+UTw3fQ+
 9uKl8xyJtASqaPs/KHICqXhCCuLQZSccqZtIos67SzNMXDXkdUFNTAT8KsGjKYYYaNHe
 JNX/DRxUf0KamVLVoGNFHRZBO4Vw7vTQNa7ztpt0OjoD+Zzr4MJvnXV0283yb/JGDpWN
 HwYv3lXvYcwx803hSxRUrFajEt7J9PkYcdNkplYy35WczHFMnKkEujBFBpEpXW1vnmLS
 GlLA==
X-Gm-Message-State: AOAM532ZCqZigZDaqvHJFQK6t+CTj/VlYnN9opOcjH2oDcMIaksX5QsG
 tvXXfxIjZC0LVI8nizvA6JRHNsZMj/cxEUWwd0g=
X-Google-Smtp-Source: ABdhPJyQmplDDiOuaab00sTTo3J+NPdzlzsOJ0hoFKjbHUVpWKKwcQBmGOi/8FBUpy25jQ1UGEkARQU5uH3XG2nZ+ws=
X-Received: by 2002:a6b:1451:: with SMTP id 78mr4580519iou.102.1608309099612; 
 Fri, 18 Dec 2020 08:31:39 -0800 (PST)
MIME-Version: 1.0
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 18 Dec 2020 17:31:26 +0100
Message-ID: <CAKXUXMx7+DGUc4LLWa+BXAkgrp9bQxCQoo_c98RNxKtw69BTSg@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Fri, 18 Dec 2020 16:34:41 +0000
Subject: [Intel-wired-lan] Maintainer of ./drivers/dca?
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
Cc: intel-wired-lan@lists.osuosl.org, Shuah Khan <shuah@kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, "Paoloni,
 Gabriele" <gabriele.paoloni@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Dan, Hi Jesse, Hi Tony,

I was reviewing the MAINTAINERS file and I was trying to understand
who is using and maintaining the files in ./drivers/dca, looking at
the recent git history and its uses, and I could not confidently say
if it is maintained by someone or not.

Given Dan's activity a few years ago, Dan, you might be the maintainer
and it is just missing a MAINTAINERS section?
Or maybe, Jesse, Tony, you are maintaining ./drivers/dca/ as you use
that in your IGB and IXGBE network drivers?

So, who is maintaining ./drivers/dca/ or is it actually orphaned?

I am happy to create and submit a patch to MAINTAINERS with a new
entry, once we clarified the status and maintainer of those files.

Thanks for your help.

Best regards, Merry Christmas and Happy New Year,

Lukas
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

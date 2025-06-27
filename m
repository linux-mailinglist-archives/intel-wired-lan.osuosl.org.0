Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D1AEC313
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jun 2025 01:40:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0DC8612B1;
	Fri, 27 Jun 2025 23:40:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F-Ujt1ctsCD6; Fri, 27 Jun 2025 23:40:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5643761073
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751067641;
	bh=Zo+kdcQtetj7zct9CzlyIxwhDyEyPpKSPBYUJL8zU2Y=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F/wJcROadCF9NDCaXBdueyp2LtZLo92p6uuoaWmngC5eaaqIZs6w7160CdMvOIMTO
	 I0B9qd3rV817oVTwj3a6xdvnRxZvFuTX5T2NiHQ1T0ZA9N/u05L1X+q3zTew2QsQWp
	 xgHMEwfdLJdvXWW/l6BApWsXzeBQ8ZxXD8CNj0hzbP91yImYNt78ZviTc3HAvFgaNM
	 p06KAGVaPLtRt1dIudJ7sH5zOf5LsrEmfgH6X4fyhJ4JHd40dxHkxIUftpr2DFbCFw
	 VDQNjOvSohoTeZsHOFoQ6IJt+f8IzrxbJMFl1tm+4EOHLax/iUKNk7lzvapphFUP5S
	 VD+76U+Bf3Wdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5643761073;
	Fri, 27 Jun 2025 23:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB55111A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0BC761022
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0TMBUkzPV5vi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 23:40:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 19E8160F95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19E8160F95
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19E8160F95
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 23:40:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A53EEA52D3F;
 Fri, 27 Jun 2025 23:40:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49EE9C4CEED;
 Fri, 27 Jun 2025 23:40:36 +0000 (UTC)
Date: Fri, 27 Jun 2025 16:40:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org
Message-ID: <20250627164035.3ef705fa@kernel.org>
In-Reply-To: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
References: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751067637;
 bh=GU/MMqTCtY/mnSC6TIWLdAKtJvLTP40P40z3oOY8SQE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hzwrB48lhOcycXueIFvKgHl5QoouUY1QfWmnu+sgvtro69ETwlVWxQzHLLnIz9Pdb
 MTjDFFSNLmXauKa8mDxByXqNz2jCGQGgBkC/dvEatLaa1Hl4zYVBFSo/Aly3dcSMG0
 L1ki0YSDtP8Zy64UR3ve9bZ5SmvO53B+KKWZOpfX9Z7OFPmb5Y6uS8GEkTh1IFtLOU
 /nAxE/r38soP8s3pLwbueI6dyQ20n5rpTBYJUmj4nqdKO9jk/qmAFBCuHjKTwA2gYO
 FIE+fTVEl0m35fMypRH1lC277ZPVXkFeXBXXDtm0tCpWM6LmZFe+goVU4rH3PvYI6b
 SBuz4e5Y9qbLw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hzwrB48l
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/3] dpll: add Reference
 SYNC feature
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

On Thu, 26 Jun 2025 15:52:16 +0200 Arkadiusz Kubalewski wrote:
> $ ./tools/net/ynl/pyynl/cli.py \
>  --spec Documentation/netlink/specs/dpll.yaml \
> --do pin-get \
> --json '{"id":0}'

For future patches -- I think we should switch to using ynl as the CLI
name, and the --family shorthand, since the good folks at Red Hat
RPM-packaged YNL (kernel-tools).

IOW instead of the above we can say:

 $ ynl --family dpll --do pin-get --json '{"id":0}'

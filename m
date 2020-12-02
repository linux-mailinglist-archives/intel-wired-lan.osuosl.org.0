Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 670F12CC780
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 21:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13F59203AF;
	Wed,  2 Dec 2020 20:11:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKvqeZUtAZds; Wed,  2 Dec 2020 20:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 223552E2AE;
	Wed,  2 Dec 2020 20:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA2E81BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4368877EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwtDFUEwEm3v for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 20:11:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62824877DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:11:02 +0000 (UTC)
Date: Wed, 2 Dec 2020 14:11:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606939862;
 bh=ZStLK7wKntRm02Bqw/laVzgLBledV/u9Ab/YK1z07Vk=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=OG2DmvqtxBqytPwxrIdBVblA491YcuiJd9AjbOL8fwoQBOT4r0xKrqOG8b/Xn9WwO
 PJR4XUUOoiKk5ovDi3k1M+CEh8mMoP3XP2Bz5YcEZV7wXi8sZhiput85T+JQr0gtZj
 mtiLej7c6jIagbC4zEJiKS1e3FhS2ZTGsjYFzhC03nnnH3jAP4LCbsykIqTYZA3LCN
 r/DCF8KQFMbckmnmZWnbLsRzDz+Mrc4MlomXx/l5by7irDpsup89z9PfblBPYm6DeT
 6wlit8K2cuSstOLn0VNWkAMIq32u5K2w2FOVTdopeLYBxC8+cR+FWmxBZB77knS/1V
 PcrVnS5Apy7xw==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Message-ID: <20201202201100.GA1466664@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202161748.128938-3-mario.limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 2/5] e1000e: Move all s0ix related
 code into it's own source file
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun.Shen@dell.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

s/it's/its/ (in subject as well as below).

Previous patches used "S0ix", not "s0ix" (in subject as well as
below, as well as subject and commit log of 3/5 and 5/5).

On Wed, Dec 02, 2020 at 10:17:45AM -0600, Mario Limonciello wrote:
> Introduce a flag to indicate the device should be using the s0ix
> flows and use this flag to run those functions.

Would be nicer to have a move that does nothing else + a separate
patch that adds a flag so it's more obvious, but again, not my circus.

> Splitting the code to it's own file will make future heuristics
> more self containted.

s/containted/contained/

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

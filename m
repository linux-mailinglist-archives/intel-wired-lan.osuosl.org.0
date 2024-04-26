Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B70208B3A03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 16:29:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 926DB41EDA;
	Fri, 26 Apr 2024 14:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RwmVNGyiK8Xz; Fri, 26 Apr 2024 14:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45D6641ECF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714141782;
	bh=jm/dV/DtEkeMblyq013Ahz4OcocAv6361H1Pd/oJ9W0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8FPxhGth+50lgN5PkcGIg7tLA9fzVHOe6j7IBmnzXwi4LSzbD4hqTlIyGgesSo9Dg
	 ZoAnXGh1xxbKpC3X1nL08z3FL8xowTg5Kz052eu7Ad/Iv3SlX03l7o6W9j0URC/wow
	 fD+XIHoi5fzhpty06Ukcfl4kxPQFafwoXS23r0+2kEmG1RMYf5/A82HrB12+5ZOwM4
	 Xifq6J7FJVw0oX1rfSRI1giNlZQRHf+fvfoP3go/G0bWN6T35x9FTcp/+Ai302FvD4
	 riqV9sbgGLZaOI61LnX+b2K9ZRCMHCF6fCKKkX16AyWvW7OL/4krQo/em8ZuwqfHYy
	 1eaG5DXSOtYVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45D6641ECF;
	Fri, 26 Apr 2024 14:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 008A81BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC4C441EDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:29:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-S3xtsioIwf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 14:29:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1C17241ECF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C17241ECF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C17241ECF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 14:29:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CDB4061FE9;
 Fri, 26 Apr 2024 14:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA6B9C113CD;
 Fri, 26 Apr 2024 14:29:35 +0000 (UTC)
Date: Fri, 26 Apr 2024 07:29:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Gordeev <agordeev@linux.ibm.com>
Message-ID: <20240426072934.776f7b4d@kernel.org>
In-Reply-To: <Zit9myOJp0SYFL1F@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
 <20240424-fix-oob-read-v2-5-f1f1b53a10f4@gmail.com>
 <ZikiZsSTGUUM69GE@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <Zit9myOJp0SYFL1F@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714141777;
 bh=D3wKqM03L7wKjDEPdv4b0+dxrNwGKgX3ntMzPx9bXCI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jC4/NKyPtYBapka0fEDWLEC+l8sFcA8lrkKpQ4+IBz5j3DoHvd12xkr4IZl3Gu9Mm
 pi0Mr4hMYvA9ajOcMreC5jOkf7IllNBsmBzSIlXEF4vJmQzzB4OWN1dbCkEdQ0lzjj
 BLzVkvqIIXy80MpHe5kjbzUbbmiVBuUYeg92zMjUUd/Wyu3DDE3qmUgeLcS6o4hXTG
 17Ctw4aZRuj97Desn+YWKTaaNo2q3RPFfOgBCEPQiJsMBiwk5qoIs8GNtPGPPD0ZE2
 Xxhy3jfy5o90qR8UsvuaWAWlvtf3V9dmcEhA6sz2eNLwvZrKzyQxt2NHEp4JeaY5pG
 hgNVTuUjUHzjw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jC4/NKyP
Subject: Re: [Intel-wired-lan] [PATCH v2 5/6] cio: ensure the copied buf is
 NUL terminated
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
Cc: Subbaraya Sundeep <sbhatta@marvell.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Linu Cherian <lcherian@marvell.com>, Bui Quang Minh <minhquangbui99@gmail.com>,
 linux-s390@vger.kernel.org, Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Sunil Goutham <sgoutham@marvell.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Geetha sowjanya <gakula@marvell.com>,
 Arun Easi <arun.easi@cavium.com>, Heiko Carstens <hca@linux.ibm.com>,
 Fabian Frederick <fabf@skynet.be>,
 Manish Rangankar <manish.rangankar@cavium.com>, Jens Axboe <axboe@kernel.dk>,
 Nilesh Javali <nilesh.javali@cavium.com>, GR-Linux-NIC-Dev@marvell.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>,
 GR-QLogic-Storage-Upstream@marvell.com, hariprasad <hkelam@marvell.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jerin Jacob <jerinj@marvell.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 26 Apr 2024 12:10:35 +0200 Alexander Gordeev wrote:
> On Wed, Apr 24, 2024 at 05:16:56PM +0200, Alexander Gordeev wrote:
> > Applied, thanks!  
> 
> Hi Jakub,
> 
> I just want to make sure you do not have plans to pull this patch
> via the net tree, right? (I schedulled it for the s390 tree already).

Yes, go for it. I picked 1, 2 and 6, no interest in the other 3 :)

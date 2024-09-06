Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7F796F724
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 16:42:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E6FC4071B;
	Fri,  6 Sep 2024 14:42:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P3uIal-VgdfX; Fri,  6 Sep 2024 14:42:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBB30404F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725633754;
	bh=ovSmR7/RC76X6kv+g4zVP0T/lQlxQdR/JLRkYwCckYo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QtoEFRzwa+RRlo+ab2jpggKb7Mqj4UxgGWucoSY736qlyIy6n++4smLYipyDC55yH
	 jzeF8+83QyDoweghYWT3ZtoF9cDgYgZmsjEOV5/ElzlwOOC5b+FyCI881XSBv0w4/U
	 6VKj9pzxayYUrK68/O1V+ld+OpmQdG5qNvUBmVM6KEPhZ5GtM0CDBQ34nxXcU9q2gD
	 iMxemyY3fWqHOr6TX5VBsZLCdvJa8dEc/2Ux4JlrcgfYfDRUr+zeleefPc5IRqQnAm
	 3c0BWB/JOGLkFQA6rnwhBBI3laO+yl1/3wORoUQO9boqv8AoiTD6SxlT1VXDgmPsu3
	 9RCOT3a4qHrqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB30404F8;
	Fri,  6 Sep 2024 14:42:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FC481BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:42:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A011405BE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h6O30Ijdqqr0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 14:42:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F8EB404F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F8EB404F8
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F8EB404F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:42:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 13F37A4042B;
 Fri,  6 Sep 2024 14:42:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C69CC4CECB;
 Fri,  6 Sep 2024 14:42:29 +0000 (UTC)
Date: Fri, 6 Sep 2024 07:42:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240906074228.0c783fdb@kernel.org>
In-Reply-To: <8ba551da-3626-4505-bdf2-fa617d4ad66b@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
 <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
 <20240905182521.2f9f4c1c@kernel.org>
 <8ba551da-3626-4505-bdf2-fa617d4ad66b@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725633749;
 bh=1CxWoaiW0pTjEkHq6N+3x8ZoSssTOadf/5sodzwdK3o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PgkV9XcHzpu7fZPLX5KGoeXDPWb0Dj2eOrUXk4iobMW+fhB2wHV9hMLMaz9emZmpU
 lcK3Mor+uHdQo4BASvsjvu3CddkJOFR9JH7SIFIVLZco0NDsBO3g20rDs/NkhS+xFy
 t0aoyAhrDGclUAp17yR1iiSe7jTGNq7qQFapr9C9vnoTM6bMUjZLQu5ztyq0K7uz0C
 sluGHoinbG5kUJjIaG4Ad/+pGzu4zQyfAGpjXxOa2wK4sf48OLIvOTu9RhdAy4Sz0q
 YfAuX+EoKKRb4epHfKszVy9FoxuOop85GSuJDhmMyvexYu8cZtSzxzKV/qbpcg+9ib
 DOQQM7nN6zJCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PgkV9XcH
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 6 Sep 2024 16:25:25 +0200 Paolo Abeni wrote:
> I think the code should be more clear, let me try to share it ASAP (or 
> please block me soon ;)

No block, AFAIU - sounds great.

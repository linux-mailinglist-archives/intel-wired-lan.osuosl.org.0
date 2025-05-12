Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33541AB37B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 14:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D612640BB7;
	Mon, 12 May 2025 12:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxnreJM1HtIT; Mon, 12 May 2025 12:49:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C02040BB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747054157;
	bh=m9BI9Qer2mdGGUES89JRe7pGWMp6PHLp9ETU3+OnxoM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=leu6oipeaMUukxmQBe3yPoMBxspXp31JEfzz3j57OFZGsm80ovuhTWY3jMmeqRqZo
	 M3CIo6ziPoLvzruq9GGe9eytaevKcyMCtNhQBAcBOd5SF/Oc48dycST84ytF4vxmcO
	 HdjO/mbNdrHaWUGT8nnfzsn185OCo95aUYZ93hyQaMm5KbCscOOBbkGu9Q+myn7qoY
	 HkfCbw+T8QaBGNKVE+yf70H/HSigZv8fcWdJxqj2QIWO2BTchoPlyzpgrXpps8CJ44
	 bdS5dYF5NLP1skLlfVK7Vh19a1PCBW2+v/31LSLjIy42tbpyx16Djdre9yHeuxVNpF
	 tQN1rISOrpXYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C02040BB9;
	Mon, 12 May 2025 12:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D939154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23B418188D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1AhMlsYWQ_I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 12:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 872F8817BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 872F8817BA
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 872F8817BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:49:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E13C94A9FB;
 Mon, 12 May 2025 12:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3731FC4CEE7;
 Mon, 12 May 2025 12:49:08 +0000 (UTC)
Date: Mon, 12 May 2025 13:49:06 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <20250512124906.GA1417107@horms.kernel.org>
References: <20250509134319.66631-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250509134319.66631-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747054153;
 bh=uXEcchTcO63su+JbMHctt2KTy/tOE1VE6ZfMeTnDk1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uwMJlLjYQGzc0DdFsmf6RtXqsHabVagYiHF9JKeEXSPeEOIThqkuQyMFu2Po1nvxt
 ByirJmikQ3bCxGfTpM5fd7773amvGS2RTOAwDpqD9QhtNxPSnGEl3bSICbeYz14Dxr
 JQXqFaby7WFAycfSFR1zEzq4S7Hy6sg8DsKVEv6vFBiIha4jxqLHoSnqQOr4rdlYX6
 qrCJmTKFxxZ0K6qqHBtfCuvAMwWzNA0xCbF9YvwWc3bEsPxdwQ0XPYaN7bGhzAYgXO
 eB9lDrzS22MiqLcg7daBEihH221ofrW3WpyGZYJY1C4bJVDZ8i/YYohu2CZBKJEpQW
 W+6divt6VYZDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uwMJlLjY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/15] Introduce iXD driver
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

On Fri, May 09, 2025 at 03:42:57PM +0200, Larysa Zaremba wrote:
> This patch series adds the iXD driver, which supports the Intel(R)
> Control Plane PCI Function on Intel E2100 and later IPUs and FNICs.
> It facilitates a centralized control over multiple IDPF PFs/VFs/SFs
> exposed by the same card. The reason for the separation is to be able
> to offload the control plane to the host different from where the data
> plane is running.
> 
> This is the first phase in the release of this driver where we implement the
> initialization of the core PCI driver. Subsequent phases will implement
> advanced features like usage of idpf ethernet aux device, link management,
> NVM update via devlink, switchdev port representors, data and exception path,
> flow rule programming, etc.

Hi Larysa,

I am having a bit of trouble figuring out where to cleanly apply this
series to. Could you help me out?

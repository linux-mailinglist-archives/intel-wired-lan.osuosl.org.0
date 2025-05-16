Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD4AB9923
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:44:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14F6683C8C;
	Fri, 16 May 2025 09:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIMHqcspp09Q; Fri, 16 May 2025 09:44:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 829F083C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388679;
	bh=7KNUO9YnJjS4vFiNCI/h3ehAj5cPQ+RgB76aB5QR6t8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A+zCQ4ZoPPtweLOJmErWkN5kIfse7Nf1aB2cGTZH8rpgl3A1mtZJKkOt4VjrYyEA6
	 D6msuPbLmihRXZhyrYP3+KMWBEBh7zkUwF2Or+HC8Ohr3b5+4nCTuCxL63h0qHI9Ms
	 jBOPOXo3R+lffzP/gDreKN6zyVX1Kqp/VjSyTFvKhYzcwKNAOOuFfd+NqM6YtWIeLg
	 T+2tTOdEqJG8Ud/mtYj0TVI143omipZ9prmqsXaea1pktsx4+BrQTzsVfuWWAh2t9D
	 95My9VG+A2v2063TiZP97xbk0gjye8jIyuAMMrJJzM/03lzblMHgBfKoiuMrhUA15T
	 VUXTDbakXwChA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 829F083C86;
	Fri, 16 May 2025 09:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D2E81AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02AC760B48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBsnQ5KUTaLG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E48D60A96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E48D60A96
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E48D60A96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8A3A7A4E66B;
 Fri, 16 May 2025 09:44:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92966C4CEE4;
 Fri, 16 May 2025 09:44:33 +0000 (UTC)
Date: Fri, 16 May 2025 10:44:31 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250516094431.GK1898636@horms.kernel.org>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-4-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514042945.2685273-4-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747388676;
 bh=3JKVCHuwfCH0ovS0CE1nP1MwRo0qB1iO+++BwqsWJfE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ntTk9J6IQzajFR0GB8wRqAt+dyAMqoDGaVGO8XAZGTgOyI51WjqcDpn5H4eWk013Y
 WDoqp1hZbjt10rJ+MXjdGycIOGS9eeIaPG+mJteAcWR7ucX+2JlFAqbtAEwERPER4q
 yfIjyokm20ATf0zF8gycdC6lQQbC6TzCEYMSqeEk82Tq36BsBQ38NV7v/qW7RJ0LQJ
 drKMgk6nG4frqj9TTaKBTJ4Q6qyLiTHeYyACRhilIOzTI8W9QPW7/ogcsVO3/YZ602
 0HZDWkyy3ihVy1v4FZOywJ5JHWHdt5lv7oJTnwSh3Dch9zwEf0hAaS/JSXqkmLpDa8
 DYWNDpt/CWEpA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ntTk9J6I
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/8] igc: refactor TXDCTL
 macros to use FIELD_PREP and GEN_MASK
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

On Wed, May 14, 2025 at 12:29:40AM -0400, Faizal Rahim wrote:
> Refactor TXDCTL macro handling to use FIELD_PREP and GENMASK macros.
> This prepares the code for adding a new TXDCTL priority field in an
> upcoming patch.
> 
> Verified that the macro values remain unchanged before and after
> refactoring.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F6EAEE521
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 19:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F851846F1;
	Mon, 30 Jun 2025 17:00:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtp1K-tBSCWp; Mon, 30 Jun 2025 17:00:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02F3484713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751302843;
	bh=jw/L88OzfTod1vK8AuCwgzrRUHVHShUQpNYEhzG8+/I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jw4sss02i7NvPw8oaqPdktfkvTmotip9FdY0YWDaYxFT4pcO3nG7F0MzeEgo824A6
	 7z+BgzFP7PKXt8nYYrb81yT0NNHWUkT6Z8omDa3rg3aFS5KTf1lZB1YleWqLcWn6Qb
	 ctCb0KaL5V5b3jGHUrnmrh3OwQgszu1XjaROjOBJwQJyZeJOLUwYkuxWYKXahXx03+
	 Q2Ce8PCvknOaTK6ATHyA4ox6ntIDCN0fKAavQZJDq6Odz3sHlLcxSgbJTWJ/P4Yjhl
	 oMZgztO5n2nNlR+LpFwBnnxpiH4dthiFCdQQXhUOhoLEwxutU0IyLhIYN6KEdhUUim
	 q22RHGSWQkewg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02F3484713;
	Mon, 30 Jun 2025 17:00:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 70712DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62521846EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:00:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PotW2UZ_JZXL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 17:00:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CCD5D84687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD5D84687
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCD5D84687
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 17:00:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 341E461126;
 Mon, 30 Jun 2025 17:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C17E4C4CEE3;
 Mon, 30 Jun 2025 17:00:36 +0000 (UTC)
Date: Mon, 30 Jun 2025 18:00:34 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vlad URSU <vlad@ursu.me>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <20250630170034.GM41770@horms.kernel.org>
References: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
 <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751302838;
 bh=A1ZSkoTFKTKhjpljfgDctJifOFrYqObAJ6IZojsoYAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GFvLYFGjbDkqPXBkpc0o6ksJ1DVo7hJR8iHF/K3W8LjK6nqYMxBji7QEtmFfs5IFy
 kSoeHEXn0wcJs03fuCYeOaqLJATW6Rw5RSrhJ/BUgyssQG1pvNmay7bmWOjCWASDr4
 xbgnvQ5n/u1F/ZH8bvLXRXtAUWowWD7Wroa5bipVNj3uGewBLJrAbJZxBV/0XcI9nq
 95Vc8Lnk7LTDc032hy1qySIga/KUrwe9k3Ehsu3+ICOxugNySSLDrFwih3gdsGgx2+
 Ds9uwkFi6BJadQhGEOi/j4+y7EAVb5BHyTL2WBI62MMa9eSp14qrMwjWnAIJRLs8F6
 JePBQM1iIE8uQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GFvLYFGj
Subject: Re: [Intel-wired-lan] [PATCH v4 2/2] e1000e: ignore uninitialized
 checksum word on tgp
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

On Mon, Jun 30, 2025 at 10:35:00AM +0200, Jacek Kowalski wrote:
> As described by Vitaly Lifshits:
> 
> > Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> > driver cannot perform checksum validation and correction. This means
> > that all NVM images must leave the factory with correct checksum and
> > checksum valid bit set.
> 
> Unfortunately some systems have left the factory with an uninitialized
> value of 0xFFFF at register address 0x3F (checksum word location).
> So on Tiger Lake platform we ignore the computed checksum when such
> condition is encountered.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Tested-by: Vlad URSU <vlad@ursu.me>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
> Cc: stable@vger.kernel.org

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>


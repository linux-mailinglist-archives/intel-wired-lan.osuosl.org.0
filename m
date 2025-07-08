Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B27AFD6E6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4AA461180;
	Tue,  8 Jul 2025 19:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fs7MHDn1ZfiW; Tue,  8 Jul 2025 19:08:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72AB861182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752001731;
	bh=6o8jr7PmxxxI+B0/6ZQpbyEINaremH+LBT8lMRc/ufc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mx0TVgmTKlkiCr9FdUoPxXREmmlumISpzwSCshIKLapN8D0bF2QXPWi1H6abu05eo
	 LJyoa7Y50LBBH9h/NRXZ0XVQUNdAMsTSj7ZVc40+OfdikmyyIS6DO9LR3/lhswj3PK
	 BtodQeC2YkbWRwry4wElmfZIDOz3dodAAtDSdScxNjoInoW/Yq+nOgsoroPYmiGNwA
	 ouDwEThWMW+x4xTVmFOAazwiJ6qcNmkRL5nHcO771hX21NDtfcfJ69X82gs0iR34aJ
	 Dr761bJIQnvgHhiCjKVFx33Onqq2IaNZT6CQh5Ko+suZHP3xGVDyzeZYhEM3NbuhKs
	 VcSdlmJ/yeGmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72AB861182;
	Tue,  8 Jul 2025 19:08:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 842A71BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75DD161180
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T3Ma7-WXcEtQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:08:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E51A5608FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E51A5608FB
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E51A5608FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 057A7A5429F;
 Tue,  8 Jul 2025 19:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 982EFC4CEED;
 Tue,  8 Jul 2025 19:08:44 +0000 (UTC)
Date: Tue, 8 Jul 2025 20:08:42 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250708190842.GA452973@horms.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <33f2005d-4c06-4ed4-b49e-6863ad72c4c0@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33f2005d-4c06-4ed4-b49e-6863ad72c4c0@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752001726;
 bh=q6CRtS8N2jyKEbwDb4Fjb/cZp5rYJB1kA0xyZFb8voc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XeS4lP9cMQRwtAGNcudhXJxAteehlOHyGEf62tsYXcSqS6g33+z8HdOyU9vwaDdnm
 WJHUocCMQ+RbpSMwjSJo+/2NM7Hc9XgsXRuvrUS0M/1l5YHQgVhfjHqFuudRLLiZu9
 mrvdlJ8CsqKyrVTcZX8wNyC+gS+Q/bNQhGTGdXhigQbaE5a4haSanZJU81IEg1VotR
 zJy9DNXVzj5cwg8aSnfcGCMeRirspQlYVlExM11Wda/94UYNhMWRIBvpznedYftxo4
 Mlv4yljfHhU0LH89UNksYbihnN4yZ7eUrob+49w0YSyOhe9TYnaqnRa//H0mUXRi3W
 zD37hig7Y2I9A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XeS4lP9c
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ixgbe: drop
 unnecessary constant casts to u16
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

On Tue, Jul 08, 2025 at 10:18:35AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>


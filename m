Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D54AFD6E0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D8C061180;
	Tue,  8 Jul 2025 19:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XPdLHDfKS_ko; Tue,  8 Jul 2025 19:08:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F0346118D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752001694;
	bh=pZRtP0hLU7NcpYt0d+Lekt5G0shauZut0WbwssMcx4w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pLmMH5WiO+beeXg3Nuk7+9GO07U4zZysOhMGntWZFUB/H/1YE7HbSYRPdpMRrAwM2
	 fL02oMk0W1JLQkUWkmgZf/UGomNDWDoINs0C9d6+M5bVlZ1PGuKEiHAkfK/5PYxcuH
	 ywggUtY9sK0l/8gnTaGndqigIGNmqvCqAkjdKS5JUjn3AIvOI4Cz7kLeHRbQY8xmhS
	 UV/6QA8YpF7bxypQZ7p7jxjsdEPc6aZTyxu2ZZwkqq5dBDU1Z6me3C4gRgygIrdzxI
	 W80R0d4/JmPeH6lod9nUQppMEaIo21r+uE37b2R+VhF8l2uPujs8hDAwo7zraZpfPW
	 5Q7LdRx8s7YNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F0346118D;
	Tue,  8 Jul 2025 19:08:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C9F51BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E2EF6117D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4VXJBQs7hcg3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BBE2608FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BBE2608FB
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BBE2608FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B308FA5429F;
 Tue,  8 Jul 2025 19:08:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54F1BC4CEED;
 Tue,  8 Jul 2025 19:08:08 +0000 (UTC)
Date: Tue, 8 Jul 2025 20:08:06 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250708190806.GY452973@horms.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <b6d736c0-ea5a-4b94-a633-dc54c6283895@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6d736c0-ea5a-4b94-a633-dc54c6283895@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752001690;
 bh=ZOCIEVL93EVZfhZxH5tb+LDXcugwRvY47JFGzny20vo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u5VNrNWv/0891zpJW22rXhAnMLrISH8u2NalTtwjQM+Ey1DX3hXtN74LyBg3MuPMf
 IQg2VbrcuILkU9SZMsZIMwdmtzO2swxoXuI38J1AiQea7TJQbLYW3mJiSP40AD7UJl
 tSLNPQ/9k/Lxc3kaIWqSVecVFjCcz9c+n2BwlrNeF0SZivUwbbdRXZQFAe2zqmpDFQ
 kNbwVeRyJpLxvxuhD0O/nwJ2N/hhmzDNqDBqtYdOGHzJVUfAEEtrRuOIel+lLYUZdz
 XyH2amuNfKW+TqF+Of7h4/bynnoN/ogvEXdsavN0WxbPIDnuSmWVCpGZU0mh/T71hJ
 m14XCHYMsjmlg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u5VNrNWv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/5] igb: drop unnecessary
 constant casts to u16
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

On Tue, Jul 08, 2025 at 10:17:49AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>


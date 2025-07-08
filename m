Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 921F2AFD6E2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:08:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FC2040C4C;
	Tue,  8 Jul 2025 19:08:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q5vcPEuqbI6r; Tue,  8 Jul 2025 19:08:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 924A640B47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752001713;
	bh=szjlJALd5apU1T7wVqXiNyKscYQQQwlDyp77yZPB2yw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=63oCLioqxyZ7rkGI5woR2ODACjRZN5iHO3E/jUDZZbW1bLYdKeiQLrmh+a1Z0ybEd
	 wgcIl5fTVM42ek1u7AOEIrD8P6RhYo/00ylzMqce+5HGvMmYdRhFMKz+zMlafnezg3
	 V2+A88exg2HcJq/x3dQXILU+hMBIicikp7NSWtL+tAdRZfGK7cKY93DN9k4H+ZhRaR
	 D+6C0ONzelvfClHQHktfpryw7/FAYGn8hd5UF4Klu9RSqEpQQXgHE3G7FXJZdAA0nC
	 ZN3Z5NzULcdoTQ1Epls48mvE7pRfVFwtWifd1t/C3esiAaNNhgROrFEu+GXR0GjEJQ
	 RxhPwBxgglSfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 924A640B47;
	Tue,  8 Jul 2025 19:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94F5D15F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AE49403B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mMEFmTQh47sD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:08:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 081644038A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 081644038A
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 081644038A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:08:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 190BFA5429F;
 Tue,  8 Jul 2025 19:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A29EEC4CEF5;
 Tue,  8 Jul 2025 19:08:27 +0000 (UTC)
Date: Tue, 8 Jul 2025 20:08:25 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250708190825.GZ452973@horms.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <42811fde-9b80-44a5-bc0e-74d204e05fe7@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42811fde-9b80-44a5-bc0e-74d204e05fe7@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752001709;
 bh=qk/WA9sSyUO9s51WYTSBhbftZqEtK6dx0JPpj7KBuek=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dxv3pCgz9ueLojvlVkfcw2E1obu6AdDv1uhp+Q+LlqmTi4y65gDSlNWsOLzSBgqOD
 2hvd+W4jfVBbpI0acV/dUE0RcYkcHGZ/B3SKqxeeuMrlyupt+mrtwp4sidxBo9ImW6
 kme6vXzAJ870Dn59UL0GXF7O9X9uwqzMG8yEzvUd5EOmCi6sIT7JMen4qwVB1tpiVL
 lrPBrfOc4JsTKyxIiNAXSrI7B2pavBRcDaoNzz4zDFsPrjiZ5G8iOcVw82BmPPiiEP
 J5ktzFMAsIk58ILC3LLXpIJ3bb61IhgbKMX1R3zF9C1LkQU4N0pRGRYx3Eu20GqaYS
 LWeR0G7hFQaZg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Dxv3pCgz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] igc: drop unnecessary
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

On Tue, Jul 08, 2025 at 10:18:10AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

...

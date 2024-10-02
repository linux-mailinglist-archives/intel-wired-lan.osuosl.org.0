Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB1298E183
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 19:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42AF74105F;
	Wed,  2 Oct 2024 17:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZJLuZmhqxLF; Wed,  2 Oct 2024 17:17:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BB9441040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727889454;
	bh=aNjF/nH5qxitY3E9vNWYPzr7Uc7Xsz8h0q7T62K3lKU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PfstWVVAnE6bLZuU+D66woRD/gkPOXP7aATYwsFo4c8SS6dWI0EQ4yRdB/QZDqUU8
	 +Yu2kk6mZs6LeG5o+hP9WVK+KBHwn6Jy83xSiC5l/WVZ1d4zvl3oLBFdE8qmtpC9lZ
	 AlXxcXcQKTck9VS7vFXkmzxpNI4ncXl75a+YHATPSClw0kP+zm/y2S/92iQVxYMyoM
	 ekq35qMlPU8M/57y0muYVwosOxy9ccSmk1IgzpsTgNFWUPc1FQRNX5x4CX2vpcY2Fe
	 svTzEWE9KAXZ0JrZbhkys7ydHXtuVnm6pSw+lM3amcrY6+C25sK9DM3iQ77/HXNQ8V
	 KVLPMSrvQ7ZzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BB9441040;
	Wed,  2 Oct 2024 17:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5A11BF83E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DDE881760
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:17:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dq0Vd47sJV4R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 17:17:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 799298175E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 799298175E
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 799298175E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:17:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id ACADCA4276E;
 Wed,  2 Oct 2024 17:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 576E4C4CEC2;
 Wed,  2 Oct 2024 17:17:28 +0000 (UTC)
Date: Wed, 2 Oct 2024 10:17:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Message-ID: <20241002101727.349fc146@kernel.org>
In-Reply-To: <ZvwK1PnvREjf_wvK@LQ3V64L9R2>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
 <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
 <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
 <Zvsjitl-SANM81Mk@LQ3V64L9R2>
 <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
 <ZvwK1PnvREjf_wvK@LQ3V64L9R2>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727889448;
 bh=pfIEXJMb4PrK/x6Ayj1gPI5EQfPIRYz2z5v24LdJmEA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qzEnYJ9CkvJ8iZ4ixy2eyCWweBM9CPz5GeO+p2AgtBUNPETZ6/3NISG/9dC2KI1OY
 UtwAOkVXxti8ogfSILyF16Jvf/ToKHgA1de0pg7voPLqDgeSkeG77c9u1oVjLXJAk1
 DsE2bEBwdFm1/EAo7jhlT/fjOT54ScBLPcmr/RIM0QGWOb2LYpNYLE1lFpV6nBxTAf
 nv3gBJiehRQNktWr9HRujEXZiH4Tbq3hPaDt9Z2kdwSWcMtVkmQeg7/ngel3QRVNxG
 F6rGxf6gNyw0cVBru74re6uWB2oBF5dHk9+RNEyIN4zzuY6UvONcoOoRf2fbquNsX5
 J7Ud/KXCYedCQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qzEnYJ9C
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 1 Oct 2024 07:44:36 -0700 Joe Damato wrote:
> > But if you change any core API, let's say rename a field used in several
> > drivers, you anyway need to adjust the affected drivers.  
> 
> Sorry, but that's a totally different argument.
> 
> There are obvious cases where touching certain parts of core would
> require changes to drivers, yes. I agree on that if I change an API
> or a struct field name, or remove an enum, then this affects drivers
> which must be updated.

+1

I fully agree with Joe. Drivers asserting the size of core structures
is both undue burden on core changes and pointless.
The former is subjective, as for the latter: most core structures 
will contain cold / slow path data, usually at the end. If you care
about performance of anything that follows a core struct you need
to align the next field yourself.

IDK how you want to fit this into your magic macros but complex
nested types should be neither ro, rw nor cold. They are separate.

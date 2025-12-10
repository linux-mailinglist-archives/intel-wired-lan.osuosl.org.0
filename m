Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EBBCB227F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 08:13:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4B38610D3;
	Wed, 10 Dec 2025 07:12:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NrjMBjE3kcfn; Wed, 10 Dec 2025 07:12:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E105C61198
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765350777;
	bh=x3HpK3ccnF6u/zp3cD2ZkZmhTO2BX0wzhCauAEtQ878=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jeShA5EtgQitB6GBca+XG8WHks/K+ekgQ0P8RtZNtNBdIhIiUSRiDZIUFaw76ZmHa
	 u1NOMyb0Oln6pgNY+JhZBn6aNjNINFt4uenygTpXtOGBnb+vsrvO8H9PRMgHUgL3Gq
	 QqlD7qa1ujM21LqW43TrAXtDkX3CxzV6SN17k1BiWDSBEPi+aYShSFiuiJdv97jppv
	 S9iZOnwD2Dx2MeUA63IUcmXnK2zU4c7TG+WRou/774x1HU5CjU1pM0QvrX1/A8bCU5
	 6TQhzcpQnLXWsmAh3G/4f5VWFNw/XnC5Z+pFwHMF/xOWYg9vm0AOJIBRCHerPTSlEd
	 Qhy0ljbb7hIxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E105C61198;
	Wed, 10 Dec 2025 07:12:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 303142C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21F1A40658
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7K2NSqKBcBnn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 07:12:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2260240625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2260240625
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2260240625
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 07:12:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5D21260156;
 Wed, 10 Dec 2025 07:12:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3449BC4CEF1;
 Wed, 10 Dec 2025 07:12:51 +0000 (UTC)
Date: Wed, 10 Dec 2025 16:12:48 +0900
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <adrian.pielech@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Simon
 Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Krzysztof
 Galazka <krzysztof.galazka@intel.com>
Message-ID: <20251210161248.49f213a1@kernel.org>
In-Reply-To: <20251204082049.1ecfd15f@kernel.org>
References: <a0561c1f-f64e-4d76-b08b-877897d45eae@intel.com>
 <20251204082001.561a5f3b@kernel.org>
 <20251204082049.1ecfd15f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1765350773;
 bh=sFqEyBE6yxp6EkIYxJswQ6NzxzBIlN7thXzlUqxpJLI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gQaM89xftyw1qw4y/TSZOuMV7ZyORfW5VHnzWd7Hy5LRO0bS9Zx7eNbi64OYOaFdl
 v7HyUcI9ymOPCb6kmU03s6YhGhlgNf4eKHrI/hEC/H2i+52Z+U8AEhmw9q5ZUSkhlY
 eTo2e2slUAvVJa8/e0zqvtP2dRQIEdo25nlFLcxZncOnj5Prc++CYJVAraeqkmYkph
 ELSXNR95Uh1mYKl8UYKswSVDny77heLoE8BoqA+BIJAfBB2dl26p0R0ld+I0KnCfJW
 yutVBJAglF6RC0Th3V2NLVR2FGhDNFD8tn+FHxJgHSOjWLINAkKVmGowrEGPvYid2c
 lom3U2zCz7rsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gQaM89xf
Subject: Re: [Intel-wired-lan] [ANN] intel's netdev-ci
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

On Thu, 4 Dec 2025 08:20:49 -0800 Jakub Kicinski wrote:
> On Thu, 4 Dec 2025 08:20:01 -0800 Jakub Kicinski wrote:
> > Are you planning to stay on the SW branch stream? I was anticipating
> > that HW testing will need a lower frequency of branches hence the
> > existence of the:  
> 
> https://netdev.bots.linux.dev/static/nipa/branches-hw.json
> 
> HW branch stream.

Thanks for switching! NIPA is now fetching from you!

One more ask - please trim the results.json file. Last 100 results or
last week's results would be enough. We poll this file every 5min so
better to keep it relatively small.

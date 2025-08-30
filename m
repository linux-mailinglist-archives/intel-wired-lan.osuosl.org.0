Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA780B3C64E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 02:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2251C61B62;
	Sat, 30 Aug 2025 00:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qKl1zq-Ty_9p; Sat, 30 Aug 2025 00:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9863C61B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756514059;
	bh=37O/TIr5BB36+QmMsDB+6npsV+89y/jV7aR9QMNzi3U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tbpyF0lnIAMTMBs0fkO7yiZ2s7Qjz0BmgwACpwVWK4zEst2dqdkDT3iBnZTqD495H
	 WWZjaUpvarEMeRlCfFy2wCopkbLPKrNPPzerBefsVd/ggLTLTlGDt8VZQCQ5BFvpDA
	 9oEROsLN2JhmbchVaK/EcZZVwkAaDmr0JoKZvvWa+6E5yfEnkfQRIcTKTqAxSaWTYU
	 mFPTya0kJD1rXiS1/lBkW/l7XGEUVuUj8Xw4hD4BDkldUTsRuaiZ61tm8bjnEYlY4Y
	 NHIvuIzZK1oZbvdt0l3lgHoMJAJe1dFtKZWPz6CdivGF/FuiagM5HExOx2UOxEoOs0
	 RIuMG91JxRA1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9863C61B5E;
	Sat, 30 Aug 2025 00:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A8857D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 00:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8514E61B5C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 00:34:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1hw5JqAxCUqN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 00:34:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D6B0361B5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6B0361B5B
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6B0361B5B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 00:34:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 32DDD60142;
 Sat, 30 Aug 2025 00:34:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB2D2C4CEF0;
 Sat, 30 Aug 2025 00:34:14 +0000 (UTC)
Date: Fri, 29 Aug 2025 17:34:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "horms@kernel.org" <horms@kernel.org>,
 "sdf@fomichev.me" <sdf@fomichev.me>, "almasrymina@google.com"
 <almasrymina@google.com>, "asml.silence@gmail.com"
 <asml.silence@gmail.com>, "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, "jiri@resnulli.us"
 <jiri@resnulli.us>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Vecera, Ivan" <ivecera@redhat.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Message-ID: <20250829173414.329d8426@kernel.org>
In-Reply-To: <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <20250828153157.6b0a975f@kernel.org>
 <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756514055;
 bh=CGKuUnFLIgZQcIQRjehK7VdSIVKubM4b+zXerCXihrc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s3xeKX/oBi5t9Q1S6/8eq9nmxlf2jzimRN2vm3MVth0Apswa0mSPSEJpISRqlYJ+O
 lx9jmYDvF5wUNPXsGnPRcqW9jGt8Fl6pFhE78KDYoLAILYaJZwJYhAETRIdDy0PSGk
 V2Opm5uLwAiwbfXXBsNJlkTMQ5LVmwDJGVTXZ0loEGHbFHscxhQiUrb9rAaVmhsZIq
 5etA2tWEQi+Zi3SFD+9r+kIDLx2vmaGH3fEXoGiCLrIIFBw8GyNRcdUTdkdGvzqFRt
 5GTkuL+f8kqZEDynRMNsmtjAl4+4dDBG0FKXVBpC9KxkXTgOctUcLVsVouiScCCse2
 jOJUy4m4eN3Vw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s3xeKX/o
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

On Fri, 29 Aug 2025 07:49:46 +0000 Kubalewski, Arkadiusz wrote:
> >From: Jakub Kicinski <kuba@kernel.org>
> >Sent: Friday, August 29, 2025 12:32 AM
> >
> >On Thu, 28 Aug 2025 18:43:45 +0200 Arkadiusz Kubalewski wrote:  
> >> Add support for user-space control over network device transmit clock
> >> sources through a new extended netdevice netlink interface.
> >> A network device may support multiple TX clock sources (OCXO, SyncE
> >> reference, external reference clocks) which are critical for
> >> time-sensitive networking applications and synchronization protocols.  
> >
> >how does this relate to the dpll pin in rtnetlink then?  
> 
> In general it doesn't directly. However we could see indirect relation
> due to possible DPLL existence in the equation.
> 
> The rtnetlink pin was related to feeding the dpll with the signal,
> here is the other way around, by feeding the phy TX of given interface
> with user selected clock source signal.
> 
> Previously if our E810 EEC products with DPLL, all the ports had their
> phy TX fed with the clock signal generated by DPLL.
> For E830 the user is able to select if the signal is provided from: the
> EEC DPLL(SyncE), provided externally(ext_ref), or OCXO.
> 
> I assume your suggestion to extend rtnetlink instead of netdev-netlink?

Yes, for sure, but also I'm a little worried about this new API
duplicating the DPLL, just being more "shallow".

What is the "synce" option for example? If I set the Tx clock to SyncE
something is feeding it from another port, presumably selected by FW or
some other tooling?

Similar on ext-ref, there has to be a DPLL somewhere in the path,
in case reference goes away? We assume user knows what "ext-ref" means,
it's not connected to any info within Linux, DPLL or PTP.

OXCO is just an oscillator on the board without a sync. What kind of
XO it is likely an unnecessary detail in the context of "what reference
drives the eth clock".

All of these things may make perfect sense when you look at a
particular product, but for a generic Linux kernel uAPI it does not
feel very natural.

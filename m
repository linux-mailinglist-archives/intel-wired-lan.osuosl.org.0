Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA7B466FB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Sep 2025 01:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C12B583D3E;
	Fri,  5 Sep 2025 23:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXUvg5-GxonS; Fri,  5 Sep 2025 23:03:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9809B83D38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757113419;
	bh=SSR5igEuT2Tf8n+EfMfirwtxqYmk61d5A+Q6qOa4nUA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uceqkcksip42GBvrPgdtB9MkkvtRLJBXK4+1OrKF3/0DgK0ePqFi69479xWMYSso3
	 q9FeAJb8dimKQ5+cgKbVOPyX7dIReDAtZdPU8cb99tFJb999j3OHeQiNaoxM+GRRTO
	 dfO9K5Yu8N2rTgNHUJzK0P8xWKwlvoMYIV9hPoygPKafrQhgE93DXV2DH52cAZZGwb
	 WApNmH1xunsf1zGaX6jTPAnWc9/OZ7+oZKhT5JgKO31B2i0v3uPX86ZU53dparb5wj
	 2nwWkgNPhbQjHYeLYE/xvx3tk+aVH+mT4V9YfmjR6VE23mI2jqqVn1lBWIaqG5MO+f
	 4dQwAjMN9gEpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9809B83D38;
	Fri,  5 Sep 2025 23:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 001EF967
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA60B412ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDTtMck87Ygu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 23:03:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D7F9412EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D7F9412EC
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D7F9412EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 23:03:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9DB8F601AE;
 Fri,  5 Sep 2025 23:03:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86F8CC4CEF1;
 Fri,  5 Sep 2025 23:03:34 +0000 (UTC)
Date: Fri, 5 Sep 2025 16:03:33 -0700
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
Message-ID: <20250905160333.715c34ac@kernel.org>
In-Reply-To: <SJ2PR11MB8452D62C5F94C87C6659C5989B03A@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <20250828153157.6b0a975f@kernel.org>
 <SJ2PR11MB8452311927652BEDDAFDE8659B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
 <20250829173414.329d8426@kernel.org>
 <SJ2PR11MB8452D62C5F94C87C6659C5989B03A@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757113415;
 bh=SSR5igEuT2Tf8n+EfMfirwtxqYmk61d5A+Q6qOa4nUA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ddx2BZAUkhkz5OFxzcQEkbmKebtXFYcikDJTvGsRE2bKHpDiiE8EfJ86D1oUQ27H+
 dTQO/eJF6KJIJ0GqPkBAfxBwX9U4ql+FFt2PcQFhoX/SG1fuKyEa2ljZxkkqajob9F
 cYKddhx0USgUJZ6mGal/Zfc4PdJt4d/bw9q+VpbnrLASSgoBUS5k0GiRnWOBzq1vQ+
 EDHxfnCsN1d/B36c3GGKz3beQPvUYL4TKuymy71Q1b6bmFhitWNP4H4ifE1/4NhTAL
 nSgiHGjgjg/PqB52RR/cihCGTQpGs6jOw+mtQh7/0IDdFOF1Zr3VNWeC1mu2n5DElb
 5mqlQFzt9mr2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ddx2BZAU
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

On Fri, 5 Sep 2025 11:14:09 +0000 Kubalewski, Arkadiusz wrote:
> Please share your thoughts, right now I see two ways forward:
> - moving netdev netlink to rt-netlink,
> - kind of hacking into dpll subsystem with 'ext-ref' and output netdev pin.

I haven't spend much time thinking this thru, but my intuition would be
similar to what we have. One dpll pin exposed via rtnetlink (like Ivan
shows in his reply), and then the selection of input for that pin kinda
looks like the mux problem that we already solved with the DPLL API?
IOW I guess "hacking into dpll subsystem" would be my first choice?

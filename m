Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 337907FF920
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 19:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF6516FA3B;
	Thu, 30 Nov 2023 18:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF6516FA3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701368003;
	bh=zwnwAACuJHJlrkd6AmRzwd2FQsizbgGlAej7N3t6kV8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9lmFEhpKv0BOM3K2EdcjsZjz0wz3L/tn6QPMRL4dnoOcGNlVMrCNlUwfObpELOOmP
	 sx9iJX/Mr4YlFO/vLjTDrKk2bZPnXVFAWXR20rGxGRSarYvZymZbpiu1B3+YspFnTf
	 G93cRJaazG9sQ+utQVe7zO7J+Wml6ZCFogWhGKz1sV+cFCs1ZQfxrE5bB32NeDquNm
	 9w9tgKIXjLbyKMzbeCBIKkMBZD01upBBGTZIJANY/wwl1CrhOBQBaeHRrv9FZHb90K
	 qwMqCxaNNdMx3tg9HC6lSChbGrWDAY+ZymXp1etGUJGL43Juh1bnJPwjx/f2JagzFt
	 DMTLXzvpFVVZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yVqPCbsld-HN; Thu, 30 Nov 2023 18:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A52E96FA2F;
	Thu, 30 Nov 2023 18:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A52E96FA2F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E69751BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 18:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C56924361E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 18:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C56924361E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOSN6n-xCC6k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 18:13:16 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D430440424
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 18:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D430440424
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1r8lXD-001gy5-Qw; Thu, 30 Nov 2023 19:13:11 +0100
Date: Thu, 30 Nov 2023 19:13:11 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Bahadur, Sachin" <sachin.bahadur@intel.com>
Message-ID: <fadae2d9-68ab-4a1a-bfe1-78d0f1c2fb13@lunn.ch>
References: <20231129175604.1374020-1-sachin.bahadur@intel.com>
 <6404194f-3193-49e0-8e46-267affb56c24@lunn.ch>
 <BY5PR11MB4257E2D47667F2108BEDBE0F9682A@BY5PR11MB4257.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB4257E2D47667F2108BEDBE0F9682A@BY5PR11MB4257.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=8ckDCFnG5XwkvZJDpsjOjyKrOSn4bB8xpoBOW5kTJ90=; b=1u73PJS8ErIXGW/BgzzndLKFdb
 tMMz5JZV0BQ7fPqGP4geiwZa3Wt9cZz6bGRAkokp0tmsqu2yDgfWlRre5xwSjTkmXIPSWXsPxLGei
 qjfP1gWqrJ0gAqiGZ6gXV1vZ16rLnktKhPp8z/da3T0Fngih6NeAhIkylXo1omZwbtF4=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=1u73PJS8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Yes, this info is available via the "devlink dev info" command. 
> Adding this info in dmesg ensures the version information is
> available when someone is looking at the dmesg log to debug an issue. 
 
Ideally you would train your users to use devlink info, since you get
more useful information, and it should work for any vendors NIC, not
just Intel which is spamming the log with firmware versions.

  Andrew

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

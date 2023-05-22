Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFDD70CB50
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 22:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2A8640B42;
	Mon, 22 May 2023 20:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2A8640B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684787893;
	bh=cSGDu4kS4J8iGR5LKhXlERV2H+i2mVL107XnY9S9rUc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=104vqF9YBEogZAT2hMNJo6KldNwlQRESo7r1RmNF0A8IHVIE2sH2FlqDLGIxN9ac8
	 EFOeZAtfXNelRi9U9MxXwzeojrJvT5M4nuBDHjc7vi6T2XL8vn02KulBjV0uZkKvgz
	 LiOCtekZxYkASPZ+QuXPVHHscOKEHULRvgrFHRn/V9GK2rARACWRoV74WZKCzp52+D
	 bEEeRSp1enKlYiUXBXLiCnKFRuuh7uI40o8Y8tsnBsyUHTX89dsURzJwn2iEha/4sW
	 qqqbNrXs0Kbkth3GLYqE6M3ZLcgtfXr8zRo4uVMFWKoSzv1D5BvaGX5JShHIp61sTe
	 5b74pY4+uOvgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9DJa4jOlDLe; Mon, 22 May 2023 20:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED009404DB;
	Mon, 22 May 2023 20:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED009404DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 78AA91BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 501AC83CD5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 501AC83CD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T7SiQ4qDh8DS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 20:38:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06E2183CBF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06E2183CBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:38:04 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1q1CI2-00DaCJ-Ir; Mon, 22 May 2023 22:37:58 +0200
Date: Mon, 22 May 2023 22:37:58 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <f5e32e43-1c7f-4d39-808d-ef882268d30e@lunn.ch>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
 <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
 <20230521051826-mutt-send-email-mst@kernel.org>
 <CO1PR11MB4993CB559E5BA413B66FF09493439@CO1PR11MB4993.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB4993CB559E5BA413B66FF09493439@CO1PR11MB4993.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=OtpNzInUK52lCXIDnI0hK+1s/2t0Rhnt7Mx63GopKyg=; b=Z53zAno4kgEy87+NBjKaXfLg4I
 igQHJkCiQxmvpkFq09rOGw/D0bwMhQjBXDCwGNun5V6JgEddWkH+onvuHbCsdYz+SazwkaAq6nTm5
 u/g4hLJNc38vOdFc8QDHpqZARZXBRlK1IlYTBtktlCFZoCQlZ5u+Z78+PDVW/bAA6v9c=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Z53zAno4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: "willemb@google.com" <willemb@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "leon@kernel.org" <leon@kernel.org>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Orr,
 Michael" <michael.orr@intel.com>, "decot@google.com" <decot@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 22, 2023 at 08:08:47PM +0000, Singhai, Anjali wrote:
> I agree on Help message change as it is not accurate now and I like MST's suggestion. 
> 
Hi Anjali

Please don't top post.

Also, please trim your replies. All the standard network etiquette
things.

	Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

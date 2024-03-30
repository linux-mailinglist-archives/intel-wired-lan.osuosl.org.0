Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E89858932F1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:31:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8107405AC;
	Sun, 31 Mar 2024 16:31:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WdNkuxwVBEZs; Sun, 31 Mar 2024 16:31:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8ED7405A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711902702;
	bh=E3M9C94KlYgWkxVnJ7peUnv4RFU6IKeHU/i44aG+ovM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FOYp0/7fxttGIjf3QGnmqFiDGUKqQADh0ut1Ec97PTqG33j6hO92yk6fohdKyMKuf
	 0LmI5EtQU2RI3GK7YnOqWemcnvEZab8nO1+Du6uaUT6IeVx68aWO+Uhp5ZepEJBXR5
	 P3UXIO5NXGNm5beVfc8Nto++g9cHkrRvqPrfyfkh9Ml19WdrQoU8z8qQl23sbLreos
	 ypZcRVS7fQwtodFKAQp21Srfg+++kC/F91WbhtrFf/aPMdO0ICO4re/gRdeuPim0Az
	 z1XJhzfoliSYOy7GnOGshrSg1PThv5IQFUMDu8sT6tayOwI9JvndkPy9HtH4d3+bLW
	 xeARgcseKoaPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8ED7405A0;
	Sun, 31 Mar 2024 16:31:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8E3D1BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94268404EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:31:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2U3O708c0Un4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:31:38 +0000 (UTC)
X-Greylist: delayed 380 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 31 Mar 2024 16:31:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B7FA40528
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B7FA40528
Received-SPF: Neutral (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B7FA40528
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id DD7C12083B;
 Sun, 31 Mar 2024 18:25:15 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cDdg-8pz7M1V; Sun, 31 Mar 2024 18:25:15 +0200 (CEST)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 9391C207C6;
 Sun, 31 Mar 2024 18:25:14 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 9391C207C6
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id 868BF80004E;
 Sun, 31 Mar 2024 18:25:14 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:25:14 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 16:23:55 +0000
X-sender: <netdev+bounces-83535-steffen.klassert=secunet.com@vger.kernel.org>
X-Receiver: <steffen.klassert@secunet.com>
 ORCPT=rfc822;steffen.klassert@secunet.com NOTIFY=NEVER;
 X-ExtendedProps=BQAVABYAAgAAAAUAFAARAPDFCS25BAlDktII2g02frgPADUAAABNaWNyb3NvZnQuRXhjaGFuZ2UuVHJhbnNwb3J0LkRpcmVjdG9yeURhdGEuSXNSZXNvdXJjZQIAAAUAagAJAAEAAAAAAAAABQAWAAIAAAUAQwACAAAFAEYABwADAAAABQBHAAIAAAUAEgAPAGIAAAAvbz1zZWN1bmV0L291PUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3VwIChGWURJQk9IRjIzU1BETFQpL2NuPVJlY2lwaWVudHMvY249U3RlZmZlbiBLbGFzc2VydDY4YwUACwAXAL4AAACheZxkHSGBRqAcAp3ukbifQ049REI2LENOPURhdGFiYXNlcyxDTj1FeGNoYW5nZSBBZG1pbmlzdHJhdGl2ZSBHcm91cCAoRllESUJPSEYyM1NQRExUKSxDTj1BZG1pbmlzdHJhdGl2ZSBHcm91cHMsQ049c2VjdW5ldCxDTj1NaWNyb3NvZnQgRXhjaGFuZ2UsQ049U2VydmljZXMsQ049Q29uZmlndXJhdGlvbixEQz1zZWN1bmV0LERDPWRlBQAOABEABiAS9uuMOkqzwmEZDvWNNQUAHQAPAAwAAABtYngtZXNzZW4tMDIFADwAAgAADwA2AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmVjaXBpZW50LkRpc3BsYXlOYW1lDwARAAAAS2xhc3NlcnQsIFN0ZWZmZW4FAAwAAgAABQBsAAIAAAUAWAAXAEoAAADwxQktuQQJQ5LSCNoNNn64Q049S2xhc3NlcnQgU3RlZmZlbixPVT1Vc2VycyxPVT1NaWdyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUAJgACAAEFACIADwAxAAAAQXV0b1Jlc3BvbnNlU3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9ye
 TogRmFsc2UNCg8ALwAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmVyc0dyb3VwRXhwYW5zaW9uBQAjAAIAAQ==
X-CreatedBy: MSExchange15
X-HeloDomain: b.mx.secunet.com
X-ExtendedProps: BQBjAAoAkKRAQuxQ3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAAAAAAAAAAAAAAAAAAAAAAAUASQACAAEFAGIACgAkAAAApIoAAAUABAAUIAEAAAAcAAAAc3RlZmZlbi5rbGFzc2VydEBzZWN1bmV0LmNvbQUABgACAAEFACkAAgABDwAJAAAAQ0lBdWRpdGVkAgABBQACAAcAAQAAAAUAAwAHAAAAAAAFAAUAAgABBQBkAA8AAwAAAEh1Yg==
X-Source: SMTP:Default MBX-DRESDEN-01
X-SourceIPAddress: 62.96.220.37
X-EndOfInjectedXHeaders: 12060
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=139.178.88.99; helo=sv.mirrors.kernel.org;
 envelope-from=netdev+bounces-83535-steffen.klassert=secunet.com@vger.kernel.org;
 receiver=steffen.klassert@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 b.mx.secunet.com 9123E2025D
X-Original-To: netdev@vger.kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1711836856; cv=none;
 b=ET1Z3thUny7dCCkpC8lbUebGMy5Plrtw6hvPlf/UJkksxBeLbmw1ghzEaCGB4mURAd074f3qtBzUYMarYvRF614ab6MmcXulApsm2/AWHxcSS4meNk4xemu+sLA9LGeMAe5fjb5xaN1coMfmUABfnU7im3jdIJCj5hwISMynSTc=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1711836856; c=relaxed/simple;
 bh=htnwxaRYLoNkryWLJaBVSFOfS9tn6Oh5EBSghNzeRHE=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:Content-Disposition:In-Reply-To;
 b=q2reOn0VT70EDOh7dna04qpxZe84BLB7BiD9y/VeQ6ly9aFwPhVqy1eWaKESospD71beZBL20aEdIGypfjBPmMd5m04+WfJtonrC+U0P6N7eG8FeuxbCnVBE+GEUIlHWjCKZxDJEUKQTsJzVHLIsEGpD4f9dPMvsSvg7l/ZEbCs=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none) header.from=lunn.ch;
 spf=pass smtp.mailfrom=lunn.ch;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=WAQ3uGBN;
 arc=none smtp.client-ip=156.67.10.101
Date: Sat, 30 Mar 2024 23:14:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <07572365-1c9f-4948-ad2f-4d56c6d4e4ab@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329092321.16843-3-wojciech.drewek@intel.com>
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=E3M9C94KlYgWkxVnJ7peUnv4RFU6IKeHU/i44aG+ovM=; b=WAQ3uGBNwM5q1A2jNEp8fqa4y4
 JAPFdkTelMrUfMAR1POls1sGXQYtQhs18rv/qsFXdzweD1Q+mSVouU8wxfgek9U/hyINTk4SSk4Kx
 yGhGJ2J93d1KR7+sE78wwu9AikmLOwitEiZB3TRceJ7vybO9GqK7qDxwvkkMuc+q6+TM=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=WAQ3uGBN
X-Mailman-Original-Authentication-Results: b.mx.secunet.com;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.b="WAQ3uGBN"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.b="WAQ3uGBN"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=156.67.10.101
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 spf=pass smtp.mailfrom=lunn.ch
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 29, 2024 at 10:23:20AM +0100, Wojciech Drewek wrote:
> Some modules use nonstandard power levels. Adjust ethtool
> module implementation to support new attributes that will allow user
> to change maximum power.
> 
> Add three new get attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
>   maximum power in the cage
> ETHTOOL_A_MODULE_MIN_POWER_ALLOWED - minimum power allowed in the
>   cage reported by device
> ETHTOOL_A_MODULE_MAX_POWER_ALLOWED - maximum power allowed in the
>   cage reported by device

I'm confused. The cage has two power pins, if you look at the table
here:

https://www.embrionix.com/resource/how-to-design-with-video-SFP

There is VccT and VccR. I would expect there is a power regulator
supplying these pins. By default, you can draw 1W from that
regulator. The board however might be designed to support more power,
so those regulators could supply more power. And the board has also
been designed to dump the heat if more power is consumed.

So, ETHTOOL_A_MODULE_MIN_POWER_ALLOWED is about the minimum power that
regulator can supply? Does that make any sense?

ETHTOOL_A_MODULE_MAX_POWER_ALLOWED is about the maximum power the
regulator can supply and the cooling system can dump heat?

Then what does ETHTOOL_A_MODULE_MAX_POWER_SET mean? power in the cage?
The cage is passive. It does not consume power. It is the module which
does. Is this telling the module it can consume up to this amount of
power?

	Andrew


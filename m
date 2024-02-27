Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE59869AA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 16:41:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D932F60A9D;
	Tue, 27 Feb 2024 15:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13flCqXJumdo; Tue, 27 Feb 2024 15:41:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 320FE60B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709048503;
	bh=uobtD88hd0NZ2CVpt7xCjfBCKKorIXY8l5PL+n1iJbE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OiW8DBHxnTHkcSbHo9DCcGFBNUf4tmOP4JvlGk7W7GYW1uImv+K5nr/4ShR+okj3e
	 lesOimEeduGXxerG6l2BRw3XFofNHTTbbYanIfTAKImkDAm5QRcb00U6naOlCEVxxB
	 RCR7dTn3BuUf7aNPLaWers1ZvCL11cz/8reWTZshZcfMUCMHY+qL89GOIT2SjZvmjs
	 /YKekyX1SqXuj3eRD6uy2WxftZTCLe/B8/m+i64VSR4uwUZU6lRdUAiGiF0Ml9EVy6
	 IC3krZ7nQ1hA2J3b7KBKHWxEL2uNgnOg9mld/PjMU7p1MEYE756zwVRQabEfo4XKel
	 aJuTX71Mc7lPw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 320FE60B1C;
	Tue, 27 Feb 2024 15:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 217411BF307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A18340BC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmyHgAZorNAI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 15:41:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 30DC740BC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30DC740BC7
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30DC740BC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:41:40 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rezaa-008rhC-Qe; Tue, 27 Feb 2024 16:41:52 +0100
Date: Tue, 27 Feb 2024 16:41:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <327ae9b5-6e7d-4f8b-90b3-ee6f8d164c0d@lunn.ch>
References: <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
 <20240226183700.226f887d@kernel.org> <Zd3S6EXCiiwOCTs8@nanopsycho>
 <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=uobtD88hd0NZ2CVpt7xCjfBCKKorIXY8l5PL+n1iJbE=; b=Me5KlcWOmqCpKkPi7P3TzWT5cj
 DJRtI+mFk6p4AWnY4iR+HHGXvc2lWl+EjmtPVw8lnK7uv2mfF4oHBhGDAa/eCRioHazZCFkDAwn8m
 PQ/cobzcSp86U44TxrGcytKw/KsNq5ltTMVhMTv/x9KFWdp/wGm9VcVH/opuNMbhhIus=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Me5KlcWO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> What if it would not be unique, should they then proceed to add generic
> (other word would be "common") param, and make the other driver/s use
> it? Without deprecating the old method ofc.

If it is useful, somebody else will copy it and it will become
common. If nobody copies it, its probably not useful :-)

A lot of what we do in networking comes from standard. Its the
standards which gives us interoperability. Also, there is the saying,
form follows function. There are only so many ways you can implement
the same thing.

Is anybody truly building unique hardware, whos form somehow does not
follow function and is yet still standards compliant? More likely,
they are just the first, and others will copy or re-invent it sooner
or later.

So for me, unique is a pretty high bar to reach.

	Andrew
	

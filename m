Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 721B0893292
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FBB3405B3;
	Sun, 31 Mar 2024 16:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOOHpU6Gmuiu; Sun, 31 Mar 2024 16:11:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FA51405A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711901500;
	bh=djscu/jmiwXxbH3AC03/PHiIOo1aF//bXO1yS4Rq2WI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0IlqtVJpFHf9kaD3z6yNXnxGaAakCpxA2b8/GFVb2mZ00Y8EpNCcO2MpCICbGSRyH
	 Wqy9/YNgWtyt2SHx8nheUAx3EOOmNuhFeRUhrNqUuT7ZQQB+QXap7cYDeFkgl78GK/
	 wofKNXdc1iZ/nJDzX4MABLMOvj/lHPUOYzwkE6lN6Rf5CvQj5JcNkYHONLQK7NDwbE
	 ehLKo7U2ONkhUqvMMUrqkcOecxSpDE6kTHI3L0KM0azkAqbY4V+JnQu/uhmGyYLhVo
	 /X6TTlJrjgU11DIT0pp190n0/J1RcoGKDfus7Fj3CgcYQN8NkQNiFQO0GtiSynHnzN
	 pRA+stmxj9HWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FA51405A7;
	Sun, 31 Mar 2024 16:11:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F02B01BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E482C40594
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-VkLvfy0Pd2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:11:37 +0000 (UTC)
X-Greylist: delayed 570 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 31 Mar 2024 16:11:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C841B4056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C841B4056D
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C841B4056D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 1837C2083F;
 Sun, 31 Mar 2024 18:02:03 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HnkZ7LDq_Cve; Sun, 31 Mar 2024 18:02:02 +0200 (CEST)
Received: from mailout2.secunet.com (mailout2.secunet.com [62.96.220.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 9666820839;
 Sun, 31 Mar 2024 18:02:02 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 9666820839
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout2.secunet.com (Postfix) with ESMTP id 8985380004A;
 Sun, 31 Mar 2024 18:02:02 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:02:02 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 15:52:41 +0000
X-sender: <netdev+bounces-83476-peter.schumann=secunet.com@vger.kernel.org>
X-Receiver: <peter.schumann@secunet.com>
 ORCPT=rfc822;peter.schumann@secunet.com NOTIFY=NEVER;
 X-ExtendedProps=BQAVABYAAgAAAAUAFAARAJ05ab4WgQhHsqdZ7WUjHykPADUAAABNaWNyb3NvZnQuRXhjaGFuZ2UuVHJhbnNwb3J0LkRpcmVjdG9yeURhdGEuSXNSZXNvdXJjZQIAAAUAagAJAAEAAAAAAAAABQAWAAIAAAUAQwACAAAFAEYABwADAAAABQBHAAIAAAUAEgAPAGAAAAAvbz1zZWN1bmV0L291PUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3VwIChGWURJQk9IRjIzU1BETFQpL2NuPVJlY2lwaWVudHMvY249UGV0ZXIgU2NodW1hbm41ZTcFAAsAFwC+AAAAQ5IZ35DtBUiRVnd98bETxENOPURCNCxDTj1EYXRhYmFzZXMsQ049RXhjaGFuZ2UgQWRtaW5pc3RyYXRpdmUgR3JvdXAgKEZZRElCT0hGMjNTUERMVCksQ049QWRtaW5pc3RyYXRpdmUgR3JvdXBzLENOPXNlY3VuZXQsQ049TWljcm9zb2Z0IEV4Y2hhbmdlLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUADgARAC7JU/le071Fhs0mWv1VtVsFAB0ADwAMAAAAbWJ4LWVzc2VuLTAxBQA8AAIAAA8ANgAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5EaXNwbGF5TmFtZQ8ADwAAAFNjaHVtYW5uLCBQZXRlcgUADAACAAAFAGwAAgAABQBYABcASAAAAJ05ab4WgQhHsqdZ7WUjHylDTj1TY2h1bWFubiBQZXRlcixPVT1Vc2VycyxPVT1NaWdyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUAJgACAAEFACIADwAxAAAAQXV0b1Jlc3BvbnNlU3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9yeTogRmFsc
 2UNCg8ALwAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmVyc0dyb3VwRXhwYW5zaW9uBQAjAAIAAQ==
X-CreatedBy: MSExchange15
X-HeloDomain: a.mx.secunet.com
X-ExtendedProps: BQBjAAoANQ1rGbMv3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAAAAAAAAAAAAAAAAAAAAAAAUASQACAAEFAAQAFCABAAAAGgAAAHBldGVyLnNjaHVtYW5uQHNlY3VuZXQuY29tBQAGAAIAAQUAKQACAAEPAAkAAABDSUF1ZGl0ZWQCAAEFAAIABwABAAAABQADAAcAAAAAAAUABQACAAEFAGIACgAyAAAAzIoAAAUAZAAPAAMAAABIdWI=
X-Source: SMTP:Default MBX-ESSEN-01
X-SourceIPAddress: 62.96.220.36
X-EndOfInjectedXHeaders: 9492
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=147.75.199.223; helo=ny.mirrors.kernel.org;
 envelope-from=netdev+bounces-83476-peter.schumann=secunet.com@vger.kernel.org;
 receiver=peter.schumann@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 42BB020883
X-Original-To: netdev@vger.kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1711750565; cv=none;
 b=pbCPTsLcVWyGAGY1F+FGFHESEMB7jZkSNc4VY5Jj4bsM/MvDfdgXv1TToeeZrfDTUIXW6qXwoXC3JFktv1qRvZmGPVXhJAnrpUB+pSkLLNgflhRLkU0oKJgtHJQqPNQLjsJ3CLEMEbDMRkfkivs0GqreaS5/Jl7q/EnKMuY0Bh4=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1711750565; c=relaxed/simple;
 bh=433Lz/Y3OL0GQmpw2bh29J8eaSo3lDFYM4WPs7r2AHc=;
 h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=Y+9IJzHKm45lSQzI5sQDQ3ESRohOGHktP1IoC3/2MZDYbG7/ZnGA54+NjzaZkVyj+92VdfZJAmsa7lCe6zNXXtqPIbBvVgZrJctatYhNc3yh8wwJB9RRLEf+BbB3t3MdLRjAw85MkkO2wZCEFFzZao2jz+HoVuA6ZfMJjyi6Z/g=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=kernel.org
 header.i=@kernel.org header.b=E0pT12sl; arc=none smtp.client-ip=10.30.226.201
Date: Fri, 29 Mar 2024 15:16:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240329151603.77981289@kernel.org>
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711750565;
 bh=433Lz/Y3OL0GQmpw2bh29J8eaSo3lDFYM4WPs7r2AHc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E0pT12slbEikvN3kyB87rQiIImPF/oVqRQPnogyTOrpr92SJK1j9FSQj+w3/pZCP4
 U845PaNqG0eXU58dSpySkBqyCipND6psVqJ7ahMozKcWyxSBkQdsAtZ7CmaFNJNe77
 1zkVSVRPsJefmfh8p3m6sh82nMCRWL5CSE6D14GTW4jXGAJNk7NdueVoe1fSBG/tyi
 vPinNQ+7/uKgJMHUupYlPB+JgU1DurTsHYatBO2gTKECco1hfuiw2s1GlARyYRNqYQ
 voMTXmfnHpyQYB35iN+lTQJVKLNcebxHadiEe4oDDZBvtVIPR+5oGton2vpLWhoMhD
 mHMppPCV34aUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=E0pT12sl
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.b="E0pT12sl"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=10.30.226.201
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Mar 2024 10:23:18 +0100 Wojciech Drewek wrote:
> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> module implementation to support new attributes that will allow user
> to change maximum power. Rename structures and functions to be more
> generic. Introduce an example of the new API in ice driver.

I'm no SFP expert but seems reasonable.

Would be good to insert more references to the SFP / CMIS specs
which describe the standard registers.

Also the series is suffering from lack of docs and spec, please
update both:

  Documentation/networking/ethtool-netlink.rst
  Documentation/netlink/specs/ethtool.yaml


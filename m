Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F8893360
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:40:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3986D405A2;
	Sun, 31 Mar 2024 16:40:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bs9jEwDi6Sji; Sun, 31 Mar 2024 16:40:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BB33403A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711903216;
	bh=djscu/jmiwXxbH3AC03/PHiIOo1aF//bXO1yS4Rq2WI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s3C+exXg/fcAmz3SRTvnXl0bAVttCTViWRI6KdtcZGSz1ZaOXNxgPBFngiOhWPwPG
	 2vwBUtX/Yi9StBIswpQy6WeprwCBlhvt54Lgc1Uq6fbVnJFOr1wrKE5XFOOna2V1x8
	 FDKHdN8euYYlKTwfJeul0SmTpi8g2gwGnH9oDnf2saVTif+iymz2XjOdt0avZ8TDWt
	 X1XUJXIfc439jirYE6gHqyCOKqbxZT+5HvPCeVLkMiRl+LQPX/od/dpsxqqNoluYIf
	 /cazHF5lBLL4itgEwleX9jA5HDYvhDtEelRBSRpscf7fpI+HDFfv0GjxuB5JLd4QV1
	 gG0jwh3uGLsNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BB33403A8;
	Sun, 31 Mar 2024 16:40:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E067F1BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB4EC40142
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rrxOGg19-Dd2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:40:10 +0000 (UTC)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E232340297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E232340297
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E232340297
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id CDBAE208AC;
 Sun, 31 Mar 2024 18:40:07 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0pwBtMFQYAqH; Sun, 31 Mar 2024 18:40:07 +0200 (CEST)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 6B621208B2;
 Sun, 31 Mar 2024 18:40:01 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 6B621208B2
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id 579D880004A;
 Sun, 31 Mar 2024 18:40:01 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:40:01 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 16:36:43 +0000
X-sender: <netdev+bounces-83476-steffen.klassert=secunet.com@vger.kernel.org>
X-Receiver: <steffen.klassert@secunet.com> ORCPT=rfc822;
 steffen.klassert@secunet.com
X-CreatedBy: MSExchange15
X-HeloDomain: mbx-dresden-01.secunet.de
X-ExtendedProps: BQBjAAoAuEimlidQ3AgFADcAAgAADwA8AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmVjaXBpZW50Lk9yZ2FuaXphdGlvblNjb3BlEQAAAAAAAAAAAAAAAAAAAAAADwA/AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5EaXJlY3RvcnlEYXRhLk1haWxEZWxpdmVyeVByaW9yaXR5DwADAAAATG93
X-Source: SMTP:Default MBX-ESSEN-02
X-SourceIPAddress: 10.53.40.199
X-EndOfInjectedXHeaders: 7385
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=147.75.199.223; helo=ny.mirrors.kernel.org;
 envelope-from=netdev+bounces-83476-steffen.klassert=secunet.com@vger.kernel.org;
 receiver=steffen.klassert@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 7A8BE20883
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
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E0pT12sl
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


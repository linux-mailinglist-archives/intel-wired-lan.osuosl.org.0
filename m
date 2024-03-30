Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1354C893379
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A79981A5C;
	Sun, 31 Mar 2024 16:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7KEKUA1SJP6K; Sun, 31 Mar 2024 16:42:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 872EC81A64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711903324;
	bh=IZ0VCe3iNf6wEVXOTCw6lmBDLZ7NjriGD/YDnR3wMN4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JbKV16+yWP/9P6IMblvXBTOb9CW26hnzL7c6EuLICdrCiUvpw35bqKEgaIkfEGMd3
	 3yOFs9VYSD+YHBKfhRtIuE1iXpuZCgSmHvTdKpds0ybklaEx5ZPmWDVAQrQcF/mg1/
	 gjnhRPWM1nHcOSN/TsuhKdZsJwMgB/9Rj4rb/nuYYhce9FgI4CrIPr6WpUZ1BVqb2F
	 tyoDxvRxrPlMxs9hQMw4bsm9NB8JLYlMHuXHBgBDfkbhcRfpOqFf9/ZaAIC+MzwVEV
	 HYAOJTr6nyEii91oW5wwUYurYGNST6PyusowD7r9jdhl1H35/dqCLJWz+QVawMJzD8
	 ScNAFARuNmvlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 872EC81A64;
	Sun, 31 Mar 2024 16:42:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EB801BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69F8B81A58
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:42:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MknFbwT8lLgt for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:42:01 +0000 (UTC)
Received-SPF: Neutral (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 800C681A50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 800C681A50
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 800C681A50
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 14485207D1;
 Sun, 31 Mar 2024 18:42:00 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CF7fSzuql0Z6; Sun, 31 Mar 2024 18:41:59 +0200 (CEST)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 8857320897;
 Sun, 31 Mar 2024 18:41:59 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 8857320897
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id 7B47B80005E;
 Sun, 31 Mar 2024 18:41:59 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:41:59 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 16:37:05 +0000
X-sender: <netdev+bounces-83534-peter.schumann=secunet.com@vger.kernel.org>
X-Receiver: <peter.schumann@secunet.com> ORCPT=rfc822;
 peter.schumann@secunet.com
X-CreatedBy: MSExchange15
X-HeloDomain: mbx-dresden-01.secunet.de
X-ExtendedProps: BQBjAAoAFmUFfe5Q3AgFADcAAgAADwA8AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmVjaXBpZW50Lk9yZ2FuaXphdGlvblNjb3BlEQAAAAAAAAAAAAAAAAAAAAAADwA/AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5EaXJlY3RvcnlEYXRhLk1haWxEZWxpdmVyeVByaW9yaXR5DwADAAAATG93
X-Source: SMTP:Default MBX-ESSEN-02
X-SourceIPAddress: 10.53.40.199
X-EndOfInjectedXHeaders: 8644
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=147.75.199.223; helo=ny.mirrors.kernel.org;
 envelope-from=netdev+bounces-83534-peter.schumann=secunet.com@vger.kernel.org;
 receiver=peter.schumann@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 4D9CC20820
X-Original-To: netdev@vger.kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1711835831; cv=none;
 b=o3bmGg6pkxuKNLm23H/EqQl645mc3BI/3oNOnCmXXZeDTufy4S/7XoTQckaCTsQgQPfJ1oCkaO6nIW3MXaFEVFyHktLJfRbH2yk609gThZggBQh+G6ND84LMgOQYRvJsHTSzLdM/7WchqsReFhlSICSnm9tENjPKVSVZFcZUWmI=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1711835831; c=relaxed/simple;
 bh=p8JMrR3aXxDyceVxKGrjVePzewVWjN37i/MfiACxrRY=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:Content-Disposition:In-Reply-To;
 b=ccWt3HBLvS2OtGm3Ycn21Leg/8+JZXm2Z9Ar33psizw6Ywv3BgORO6Ckh90tqq6sWTFhv2V/gQpr631zW6reHM8kdXGh044T2C270gIj2TzxdFBYQ+TjGsrSta6WOIIbwiRgt+z9HVlYHX4ep4OLtsd+CphA2ThRAj3Ga1w3Cdc=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none) header.from=lunn.ch;
 spf=pass smtp.mailfrom=lunn.ch;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=PBZbgQcq;
 arc=none smtp.client-ip=156.67.10.101
Date: Sat, 30 Mar 2024 22:57:02 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240329092321.16843-1-wojciech.drewek@intel.com>
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=IZ0VCe3iNf6wEVXOTCw6lmBDLZ7NjriGD/YDnR3wMN4=; b=PBZbgQcqz+Z/9+/z5NNgXvLHao
 y+Z95swHz8k9SInML7Cx6typz+jPac5PQ8x2QOVjZiHrhxDhb6tkgljD806DlPmYqcV54edGZmbCl
 y8BmaRaIJM2yB2pDVuq/vtwhzgL16ybpZWuM+0dzv0/X9Nml7k+SAMK9FfVrBl/aRKLQ=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=PBZbgQcq
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.b="PBZbgQcq"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=156.67.10.101
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 spf=pass smtp.mailfrom=lunn.ch
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
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> module implementation to support new attributes that will allow user
> to change maximum power. Rename structures and functions to be more
> generic. Introduce an example of the new API in ice driver.
> 
> Ethtool examples:
> $ ethtool --show-module enp1s0f0np0
> Module parameters for enp1s0f0np0:
> power-min-allowed: 1000 mW
> power-max-allowed: 3000 mW
> power-max-set: 1500 mW
> 
> $ ethtool --set-module enp1s0f0np0 power-max-set 4000

We have had a device tree property for a long time:

  maximum-power-milliwatt:
    minimum: 1000
    default: 1000
    description:
      Maximum module power consumption Specifies the maximum power consumption
      allowable by a module in the slot, in milli-Watts. Presently, modules can
      be up to 1W, 1.5W or 2W.

Could you flip the name around to be consistent with DT?

> minimum-power-allowed: 1000 mW
> maximum-power-allowed: 3000 mW
> maximum-power-set: 1500 mW

Also, what does minimum-power-allowed actually tell us? Do you imagine
it will ever be below 1W because of bad board design? Do you have a
bad board design which does not allow 1W?

Also, this is about the board, the SFP cage, not the actual SFP
module?  Maybe the word cage needs to be in these names?

Do we want to be able to enumerate what the module itself supports?
If so, we need to include module in the name, to identify the numbers
are about the module, not the cage.

    Andrew


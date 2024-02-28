Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF0D86B546
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:47:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54BBC60BB2;
	Wed, 28 Feb 2024 16:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eOlH9fjwqOVD; Wed, 28 Feb 2024 16:47:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9761460E4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709138870;
	bh=Kca/EspHVPgsescSj0Lwl6O+eVeerQfdjASheP4YJbc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2WmA4H/4vwJGeRAdFE48APPj+/dHRL6rMBd+L8VUw4oNplNC5dab2InftUlz98Ts2
	 n0E2MYmf7H3eHfpzYEVKELcTCq+BzdmcykD8JJt3JxUvPdtXNriSr/IfxSzICW1zYx
	 Fzvb8AmixQVJgjR+9gRVs52p8dcuhQDLXI7bw3rWgFiQuK//Z0KJbTuXG2yLzrlfGA
	 pWBtpd3UoV4iNgalgC75BL1geaqULkU8/IYA3zjRw/1JTVCfnM3ZLNQ9LBj435OdfQ
	 uGXurUHGs/Wr3TtQB87pH/TdiLfdejW4cBToBmzUfmfh4hm2tthp2LdKfJAFZrDYfN
	 CWRjTBEiKlHiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9761460E4D;
	Wed, 28 Feb 2024 16:47:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 267B51BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1370A825FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AYcaxRZ5_vU3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:47:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 431C481329
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 431C481329
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 431C481329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:47:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0C95C618C4;
 Wed, 28 Feb 2024 16:47:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AECBC433F1;
 Wed, 28 Feb 2024 16:47:46 +0000 (UTC)
Date: Wed, 28 Feb 2024 08:47:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240228084745.2c0fef0e@kernel.org>
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709138866;
 bh=b2TpBXK1sp4wEplxo/EQpyW1+4g2o5H3qAMXu1AYNxo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SlOPyPJH0Q3n61zNPv2CtaRLZsu835s9RCoOxB9tccvh+YmK0bCXszPguvmSj3UQ+
 7j9ciw0uyFiQBW2mvwgha4eVr8icKqtkhD6hY8LTc6nXsw07bfIWOmrDH8ETs5Ism7
 IMuNBMeg8Wr4l6eQyvlp8bDAho2r3MNzRiXAK4CPNsu/hAN1aZil9mNvazQznu1Hqq
 PI8KJ7AmfmfEbB/9jw/l7j4Vmy9h4nLKCO8P1rcK5GoL7WDAV8zS0DNHS171jsy0C6
 NEqVkAMkmjq8MCinLk9RkD0cJLjrrbZyi6nh6+dGNr8ueLGIWwnzbHMjrY3hH30qXt
 EraAI9g4b+0pw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SlOPyPJH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 28 Feb 2024 16:59:44 +0100 Larysa Zaremba wrote:
> Allow to:
> * receive LLDP packets on a VF
> * transmit LLDP from a VF
> 
> Only a single VF per port can transmit LLDP packets,
> all trusted VFs can transmit LLDP packets.
> 
> For both functionalities to work, private flag
> fw-lldp-agent must be off.
> 
> I am aware that implemented way of configuration (through sysfs) can be
> potentially controversial and would like some feedback from outside.

Why is the device not in switchdev mode? You can put your lldp-agent
priv flag on repr netdevs.

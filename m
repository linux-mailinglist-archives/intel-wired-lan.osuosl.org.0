Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9DE8BE214
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 14:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE9D640309;
	Tue,  7 May 2024 12:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kCISfsgSBcoM; Tue,  7 May 2024 12:29:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D291E40669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715084973;
	bh=5V+1nFSAUkiuiW5zI+KiDr7XGM1wYhBwOjZiie4eCy4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uT7tV8xIVGKsi3KjEHIrxghHetlK0WuucRm34iL+58oEQ5TJ8bRCgTJH0ev4thQ+B
	 2jL7WaKN6oaGc9iRjVAXes8nvtcrGZSF+y2TYhRDnDjUkIdY8Im4pRT1L71Lnk+q3J
	 YcV0nFtngXeAJ+07URyum6PzYwffGYlBqluwuGn98l9uxymbKiauy1GOqeuhOvSp5T
	 muDYmgUrTKd/1B7TxabLiTbOOf1I3br+7J53mGplTxCq/vduycuoRdA5jSVvzTzW4N
	 JuWmdMWHxDZQoasTS6QAnYEtRznC/towgRoHxbOegnft9ZRUHNOXLBWVoSAyBXaIuL
	 7JP2xjhP1sH6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D291E40669;
	Tue,  7 May 2024 12:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3754B1BF386
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 303D86059B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:29:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBQAWEsk3oNC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 12:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33DF960598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33DF960598
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33DF960598
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 12:29:30 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s4Jwj-00Equp-Oa; Tue, 07 May 2024 14:29:25 +0200
Date: Tue, 7 May 2024 14:29:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: En-Wei WU <en-wei.wu@canonical.com>
Message-ID: <010c2d24-201e-4aba-b4a1-d973545121a7@lunn.ch>
References: <20240503101824.32717-1-en-wei.wu@canonical.com>
 <7f533913-fba9-4a29-86a5-d3b32ac44632@intel.com>
 <CAMqyJG1Fyt1pZJqEjQN_kqXwfJ+HnqvW1PnAOEEpzoS9f37KBg@mail.gmail.com>
 <d2d9c0a8-6d4f-4aff-84f3-35fc2bff49b7@intel.com>
 <CAMqyJG2S4yvO-UiCiWydO+9uzOWpeKR9tmMDWrw=m6O7pd3m0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMqyJG2S4yvO-UiCiWydO+9uzOWpeKR9tmMDWrw=m6O7pd3m0w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=5V+1nFSAUkiuiW5zI+KiDr7XGM1wYhBwOjZiie4eCy4=; b=YsqoD66pR6k8Uver9MP2Vpm5EA
 Q1gzlHM+IqOrnrZBXnp18aN58tO+r8SsxPBJTIWAAna58kgC0OLj29qbwvP4QNvDwrgXm3VJSS1p6
 ySAN+0ihKOMD/LDg+QvguGfBx7S9TblyZnHzePTTu6NMNMRWcUscLEuQiuMC6Qot6rrQ=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=YsqoD66p
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] e1000e: let the sleep codes
 run every time
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
Cc: Sasha Neftin <sasha.neftin@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, kuba@kernel.org, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > (1) How serious this problem is. It is normal for link establishment to
> > take a few seconds from plugging the cable (due to PHY
> > auto-negotiation), and I can accept some link instability during that time.
> Actually, the problem is not critical since the link will be up
> permanently after the unstable up-down problem when hot-plugging. And
> it has no functional impact on the system. But this problem can lead
> to a failure in our script (for Canonical Certification), and it's not
> tolerable.

Please could you describe your test. We should be sure you are fixing
the right thing. Maybe the test is broken, not the driver...

    Andrew

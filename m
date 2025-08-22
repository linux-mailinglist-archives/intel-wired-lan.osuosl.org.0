Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B07EEB31B3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 16:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4250060BBB;
	Fri, 22 Aug 2025 14:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t8zog2RJq7EG; Fri, 22 Aug 2025 14:23:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1DFD60BB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755872612;
	bh=moMmqop6+f6ZK5sFf/agXhFIAtVK5/F3FGWxEjPLyYw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3cMIxIyuItKG7HFDIdx+iZxSHH1BIWS5neSQCahz1N++0pPLoAXJpXRbtQvN+qpVQ
	 GwWl3etQ9zX5QMc2+VS6xLg+Nbx7BbzslGRWQ8KabrlJXVQDdSoq4YSEcy/6C73HL4
	 xF24vz8bQpNIA2PwXhruAMp9FEls/UWgCJZJQHAfB+fQdcz9mL+1Nyj8djJ79bbRRL
	 mpGIQcBqebPQ7ZaKgeG/w3MJhO4vaSafU+Sbk/Iv6g9wNkj3lxQ223tSlowT4bCsyi
	 G0+p5YvcKZzvRwa1ldEhqwE1SCcLpTzjpgPzel6cgRgGXKa4ZOVmyT1G1NCP/3WfSg
	 5Aj87VhFswVEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1DFD60BB3;
	Fri, 22 Aug 2025 14:23:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CE784D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 14:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C094760B9C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 14:23:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7-D4WGE0JTPy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 14:23:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 474BD60BAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 474BD60BAF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 474BD60BAF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 14:23:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 302D85C6EFE;
 Fri, 22 Aug 2025 14:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77710C4CEED;
 Fri, 22 Aug 2025 14:23:27 +0000 (UTC)
Date: Fri, 22 Aug 2025 07:23:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Calvin Owens <calvin@wbinvd.org>
Message-ID: <20250822072326.725475ef@kernel.org>
In-Reply-To: <aKfwuFXnvOzWx5De@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <aKXqVqj_bUefe1Nj@mozart.vkv.me> <aKYI5wXcEqSjunfk@mozart.vkv.me>
 <e71fe3bf-ec97-431e-b60c-634c5263ad82@intel.com>
 <aKcr7FCOHZycDrsC@mozart.vkv.me>
 <8f077022-e98a-4e30-901b-7e014fe5d5b2@intel.com>
 <aKfwuFXnvOzWx5De@mozart.vkv.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755872607;
 bh=NRmbokerOkaoNwUm/ECSYcST0Xx0kquTkzlGfTjqUAo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qKwv2MBGVd60tTdMjme/4HLd0iQIXLtwZmOtuD2UVfs5ZQEvImFR6TMHfvyxbnsFg
 B4CM5hMy0a4F2JmlzB2iTbhE3hTp0QgAareINSGbG8HzmMArh9KJxfigR197iBtoyr
 SUQdMXSaY2xt/JiVqShNh7EYBSMVASHgTEpiZmLa1EMiAmi1TXe82jp4zRkxh2tqaN
 Y9lOoCsTcUnwSh/j8iwN58YjrKBbNppGWw4IaERnrzbZCK/R8jqvCI9P7U/XeYGDmA
 E2C7RBa3YXRNlVFQOrbrfnjoCyXsgngRIvtX4m4r+LlgmwQTY0FCJXDkOCvn29HvZ3
 RRO9yeZQfePhw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qKwv2MBG
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 21 Aug 2025 21:23:20 -0700 Calvin Owens wrote:
> > > If you actually have data on that, obviously that's different. But it
> > > sounds like you're guessing just like I am.  
> > 
> > I could only guess about other OS Vendors, one could check it also
> > for Ubuntu in their public git, but I don't think we need more data, as
> > ultimate judge here are Stable Maintainers  
> 
> Maybe I'm barking up the wrong tree, it's udev after all that decides to
> read the thing in /sys and name the interfaces differently because it's
> there...

Yeah, that's my feeling. Ideally there should be a systemd-networkd
setting that let's user opt out of adding the phys_port_name on
interfaces. 99% of users will not benefit from these, new drivers or
old. We're kinda making everyone suffer for the 1% :(

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 331EC62B313
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 07:05:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B333581E12;
	Wed, 16 Nov 2022 06:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B333581E12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668578711;
	bh=4r/gvmdZxg+uil9PptDJ2KU8RA/AqdAXqvln8O0/fZ4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PWpXihTxCkFgVZX7bMImYNetsoB2doJ0Jyp5Ipup90am7I4o8iikGQXBlM/VbsVPF
	 rVB19ZBdmttFxAtO/dS3E7WBfWdvLFRNqdHycTIsfaBrqpQvI4cnpytDHA0J4XZgcs
	 VrVGL4pEx+9mos58ZBTPLJVz6a27wSznms9fAJgQCL5rRiNlaaYdQkTuZXlqtkKOGT
	 whNZTXra/YU1S6+MpeEd3qB1vrNKJMBiXp9Q+SJ34y80rw59CFu/OVFyYBFrz2+IQd
	 QcpGDDKKJJYIkkM2RtenrNscFobhYtnWYWu4MQ0/2Etlw+HBfhKuceHM6IUP4/bQ3Z
	 8pv2dPT2BsxOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYTHKbxzYqcT; Wed, 16 Nov 2022 06:05:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C29CF818B5;
	Wed, 16 Nov 2022 06:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C29CF818B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C10611BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 06:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A8964012B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 06:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A8964012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_D3fOpyabrK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 06:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE2E1400D9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE2E1400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 06:05:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BD2C961A1D;
 Wed, 16 Nov 2022 06:05:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58F79C433C1;
 Wed, 16 Nov 2022 06:05:00 +0000 (UTC)
Date: Wed, 16 Nov 2022 08:04:56 +0200
From: Leon Romanovsky <leon@kernel.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <Y3R9iAMtkk8zGyaC@unreal>
References: <Y3J16ueuhwYeDaww@unreal> <Y3M79CuAQNLkFV0S@localhost.localdomain>
 <Y3NJnhxetoSIvqYV@unreal> <Y3NWMVF2LV/0lqJX@localhost.localdomain>
 <Y3NcnnNtmL+SSLU+@unreal> <Y3NnGk7DCo/1KfpD@localhost.localdomain>
 <Y3OCHLiCzOUKLlHa@unreal> <Y3OcAJBfzgggVll9@localhost.localdomain>
 <Y3PS9e9MJEZo++z5@unreal>
 <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be2954f2-e09c-d2ef-c84a-67b8e6fc3967@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668578701;
 bh=dUmzkPluZtQiyq2oNa5xsUNc4WZFXNBLWs3LEsw5NT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u+BqUzFBS6c1zo+GXWkPLS0w97BkkEIylWYnVBleWgxks+rgjBWl/34RF9tPmYQqi
 NQsW/uY8mF9m8N39Wxj6gmLbHw8MFPC+/GYx/Ix/7Vmf5Ir+I13rSLWTUdlqwT4mJp
 tnTSnaR4b5XWU2gG0MiUJ0+fTb2sJ6DT9PSJYpLj7hR6DFFJSXMyKgvLwDkq3/s+wF
 E+Kr8CD3/Nn+r7cRoLfW8g8jpv7nHzDQdHrkCHiKN1/uf7p0BVzNw4B0YBPz6kTiDC
 THzdZhV+30bmnICIpRswIhFK8vrlJEFuSzvCK/3uwlYdJmIVia9fk0vjQIKXZf3QOh
 oHQknlrm1ZGpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u+BqUzFB
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/13] resource management
 using devlink reload
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
Cc: netdev@vger.kernel.org, jiri@nvidia.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, edumazet@google.com, mustafa.ismail@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 15, 2022 at 07:59:06PM -0600, Samudrala, Sridhar wrote:
> On 11/15/2022 11:57 AM, Leon Romanovsky wrote:

<...>

> > > In case of ice driver lspci -vs shows:
> > > Capabilities: [70] MSI-X: Enable+ Count=1024 Masked
> > > 
> > > so all vectors that hw supports (PFs, VFs, misc, etc). Because of that
> > > total number of MSI-X in the devlink example from cover letter is 1024.
> > > 
> > > I see that mellanox shows:
> > > Capabilities: [9c] MSI-X: Enable+ Count=64 Masked
> > > 
> > > I assume that 64 is in this case MSI-X ony for this one PF (it make
> > > sense).
> > Yes and PF MSI-X count can be changed through FW configuration tool, as
> > we need to write new value when the driver is unbound and we need it to
> > be persistent. Users are expecting to see "stable" number any time they
> > reboot the server. It is not the case for VFs, as they are explicitly
> > created after reboots and start "fresh" after every boot.
> > 
> > So we set large enough but not too large value as a default for PFs.
> > If you find sane model of how to change it through kernel, you can count
> > on our support.
> 
> I guess one main difference is that in case of ice, PF driver manager resources
> for all its associated functions, not the FW. So the MSI-X count reported for PF
> shows the total vectors(PF netdev, VFs, rdma, SFs). VFs talk to PF over a mailbox
> to get their MSI-X vector information.

What is the output of lspci for ice VF when the driver is not bound?

Thanks

> 
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

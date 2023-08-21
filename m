Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0378277F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 13:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D3B81F7F;
	Mon, 21 Aug 2023 11:01:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D3B81F7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692615718;
	bh=kXS8RHBvDu3yhSwKOsqBrLJrNQt9iiu2Xg+2RtxqTAE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2QzBERpCdeFC8hGUQsQXG7J+QblsU6TbFfG/Eyg1iWaNqXwGQw/fIbSUHXirGq2Ua
	 TKdJ2y7JVrQCUsLk63WH8y9QuRK8RCn9yCJpFJDOg4NtxPwKHac6d3mVnLAt0EC8s+
	 g0UeBMcQ/ZgDOriG5nEnJCvXjF2jWX5Znea9ImaVHJlrYbU5hj9vfOFOm75pWXfjUY
	 viUJU3eeqO8LVMoQQ1h5+UC6EAohn5fa24fi5WCO3e8/MqFdCSR+xrfihJanjgfkQA
	 PuqQp45cDwECw83NSAEeik8nT5SX92s+haJzzX9EclPhObkLGoMFYFOMxh6jobjGSW
	 f/vp+FYK7JETQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id As_6VYpPHJJF; Mon, 21 Aug 2023 11:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAE1A81F6B;
	Mon, 21 Aug 2023 11:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAE1A81F6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DEF11BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 11:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 666BF40134
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 11:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 666BF40134
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GzkhggB-UdEi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 11:01:51 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7698400D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 11:01:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7698400D7
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E3A8E6146F;
 Mon, 21 Aug 2023 11:01:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAD4EC433C8;
 Mon, 21 Aug 2023 11:01:49 +0000 (UTC)
Date: Mon, 21 Aug 2023 14:01:46 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230821110146.GA6583@unreal>
References: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
 <20230816143148.GX22185@unreal>
 <c1f65aa1-3e20-9e21-1994-1190bf0086b7@intel.com>
 <20230818182059.GZ22185@unreal>
 <12025d38-a5e2-5ddd-721f-c1c083785d22@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12025d38-a5e2-5ddd-721f-c1c083785d22@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692615710;
 bh=S4a8g3g8apaEmqmUxzFGUGuj/O5FXcWNOgUHgFy7xWE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q9vbORbijEtOyv7Du8LhvIQliLo8lOQ1y5wTjmlAyaxaokYCa0G0Whh0mHMCVOJ3K
 wlZMfeaFHkm7tPwD8YwGgKTKYT2NBAaa2zqE92zfcblAboa+NZzIMuc4XmLPh1oLBl
 Y2iI1EB9uyNgwry18gRk6Rny4tr/4im7sJLk3rtbvY+uKeoAXmewKQJEZKwuQVP4f+
 mD3NdBap+QixSrrG38nr3j9xRTfvmP+Bn7sHfFzypSHLDtRWfZHy6Dk8+8VVQp+Px0
 cJvtZZBTQyY5mMUQEZ4XsR5j6gbpAALMjLTiUOTdrTVwb0yENKlr75xkRIbg963CVZ
 TO+HCXimT1AXQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q9vbORbi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr
 in ice_vf
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 21, 2023 at 12:48:40PM +0200, Przemek Kitszel wrote:
> On 8/18/23 20:20, Leon Romanovsky wrote:
> > On Fri, Aug 18, 2023 at 02:20:51PM +0200, Przemek Kitszel wrote:
> > > On 8/16/23 16:31, Leon Romanovsky wrote:
> > > > On Wed, Aug 16, 2023 at 04:54:54AM -0400, Przemek Kitszel wrote:
> > > > > Extend struct ice_vf by vfdev.
> > > > > Calculation of vfdev falls more nicely into ice_create_vf_entries().
> > > > > 
> > > > > Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
> > > > 
> > > > I see that old code had access to pci_dev * of VF without any locking
> > > > from concurrent PCI core access. How is it protected? How do you make
> > > > sure that vfdev is valid?
> > > > 
> > > > Generally speaking, it is rarely good idea to cache VF pci_dev pointers
> > > > inside driver.
> > > > 
> > > > Thanks
> > > 
> > > Overall, I do agree that ice driver, as a whole, has room for improvement in
> > > terms of synchronization, objects lifetime, and similar.
> > > 
> > > In this particular case, I don't see any reason of PCI reconfiguration
> > > during VF lifetime, but likely I'm missing something?
> > 
> > You are caching VF pointer in PF,
> 
> that's correct that the driver is PF/ice
> 
> > and you are subjected to PF lifetime
> > and not VF lifetime.
> 
> this belongs to struct ice_vf, which should have VF lifetime,
> otherwise it's already at risk

I'm not so sure about it. ICE used to use devm_* API and not explicit
kalloc/kfree calls, it is not clear anymore the lifetime scope of VF
structure.

Thanks

> 
> > 
> > Thanks
> 
> Thank you!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

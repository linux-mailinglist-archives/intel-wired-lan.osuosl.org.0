Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5542BA86F09
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Apr 2025 20:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EFD180EE7;
	Sat, 12 Apr 2025 18:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8lkGn1PvGqXG; Sat, 12 Apr 2025 18:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11A581007
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744483903;
	bh=I2K5+74DxP8aE5nIFyeb6U3ff7ON870/pRfVI5lloEU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hQFHcKePLzzCMekcISSojwdsFjdJH160Swmr4+fg0FAXH7rvTqBd9TNYLvX0nifym
	 +5LqmU+zCHSA6PLu3T6wvoeybnn2qH+oN3bMPBLj5qdPIHtQqYfwucS9/lBP2vlduR
	 2Wbi/z3A6/ENsGyNh0JXJbLCaPEGMlKVi/X4ZoqCxW6MuZ2RDrX4bOnrTKag/ZpdzN
	 lwuWRIkzfKpdMssgcbIREQL04/X2iuG24f6yHK3HVcZgFdjfZ5jLGIYzSQtDJgZmqp
	 JnicfgjXzbQh4L4+eBiDNEZ3lsPI1oMbGAc57istx1T5bxUhqDqbheYtOzX1Hcyn7Z
	 sGedqbNO5Dlzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F11A581007;
	Sat, 12 Apr 2025 18:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E9E53DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 18:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBD6F40540
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 18:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ScmSFGRCa9Sx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Apr 2025 18:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A28D40530
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A28D40530
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A28D40530
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Apr 2025 18:51:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 57FDAA499BE;
 Sat, 12 Apr 2025 18:46:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46A1AC4CEE3;
 Sat, 12 Apr 2025 18:51:38 +0000 (UTC)
Date: Sat, 12 Apr 2025 19:51:35 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 netdev <netdev@vger.kernel.org>
Message-ID: <20250412185135.GR395307@horms.kernel.org>
References: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410-jk-fix-v-num-mac-count-v1-1-19b3bf8fe55a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744483899;
 bh=TJeAhN7UVWxKbz3b/oizNT6LyE4kHo/KOvKEu07vtLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lAIyXFd6exOgyUDReZVkzxe/lcBoXJM4hyi8P6AultpmXSFeONVfHE5IysRUKZxmo
 S3FXR4r/QNIz305NOwAwNNr4jLoVCijU6OFLyXSZHBM2Z+ld5u8SHghYRyvfhFKkBl
 SwE8lmmcA4CWfa+cGy6UMAWIeaiR7zyyemyrt2CWHlMrUUUWkEL5rn94bxWWB3OlRw
 56zCAlPdHdH1GnYhqx3v4fpPlfGqBRf95OfslL5eFb+YYTLVKINAOj+ywHpKAUOqSO
 sjkT148npoTtNC+4VPHYsI2WxjDue0kkbckZUODh1os/HmsPRfTdNGAnLoGydKw9li
 i2QvJh2Hzlkhw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lAIyXFd6
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix vf->num_mac count with
 port representors
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 10, 2025 at 11:13:52AM -0700, Jacob Keller wrote:
> The ice_vc_repr_add_mac() function indicates that it does not store the MAC
> address filters in the firmware. However, it still increments vf->num_mac.
> This is incorrect, as vf->num_mac should represent the number of MAC
> filters currently programmed to firmware.
> 
> Indeed, we only perform this increment if the requested filter is a unicast
> address that doesn't match the existing vf->hw_lan_addr. In addition,
> ice_vc_repr_del_mac() does not decrement the vf->num_mac counter. This
> results in the counter becoming out of sync with the actual count.
> 
> As it turns out, vf->num_mac is currently only used in legacy made without
> port representors. The single place where the value is checked is for
> enforcing a filter limit on untrusted VFs.
> 
> Upcoming patches to support VF Live Migration will use this value when
> determining the size of the TLV for MAC address filters. Fix the
> representor mode function to stop incrementing the counter incorrectly.
> 
> Fixes: ac19e03ef780 ("ice: allow process VF opcodes in different ways")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I am not certain if there is currently a way to trigger a bug from
> userspace due to this incorrect count, but I think it still warrants a net
> fix.

Reviewed-by: Simon Horman <horms@kernel.org>


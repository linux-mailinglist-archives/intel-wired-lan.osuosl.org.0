Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B5EAD7424
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 16:39:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4155640809;
	Thu, 12 Jun 2025 14:39:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nuqncYzJ8KK; Thu, 12 Jun 2025 14:39:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B05DE4080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749739174;
	bh=hAarNFFhgHiopxlCPebf/1Z0oqLQykCiRQa97boUEc0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jyVcAr0lP7g65CUKCPFDwkGwgmJt2YLYx59RRIjoahsrdOLAnAdIAj16tLKpPn+xk
	 NALmaEjQsekeB6zBPbAnGiGUb7oAhDDeeos2UBpLCw11fadW1t8TnGV7w9fmqaKlFw
	 MmlSKcPshDQrSCY1Yv9Ni7Gbb4ZazDSc0rOhjCDDREQ+ljlHXLOcnzvW4v2y2SSJXE
	 lLUltQ+fuPp1mDVGy3MSxV/UfLOybpOvtBKY7cygxipY1j94DU8EbnjFnUvc7nS/QZ
	 lSMu0HJHjstD320EsTx3IvdZSVSRXC3cs2sqLjfoN7nL5zO91Ez8OapYj65UO8Mllg
	 NS+dc0GrXvCRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B05DE4080E;
	Thu, 12 Jun 2025 14:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AFBD4183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9930B832D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dILJwNG9meXE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 14:39:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1FFDB82B81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FFDB82B81
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FFDB82B81
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 14:39:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 618B74A7A1;
 Thu, 12 Jun 2025 14:39:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDB59C4CEF7;
 Thu, 12 Jun 2025 14:39:29 +0000 (UTC)
Date: Thu, 12 Jun 2025 07:39:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org, Cosmin Ratiu
 <cratiu@nvidia.com>
Message-ID: <20250612073929.151fe6bf@kernel.org>
In-Reply-To: <aEo_2hOn5kh6kBpk@mini-arch>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
 <20250610171522.2119030-2-stfomichev@gmail.com>
 <20250611184345.3b403ad0@kernel.org> <aEo_2hOn5kh6kBpk@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749739171;
 bh=oocYYW9XhNGhlIxt3VxA0yDbX+cvu/AYrEHlCDzEaEU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HeWqqdY5vrpn0k5DQvBel2CHEGRBgQDN15MknA6s3IDn1q15iZRQdO9brvYgOw177
 3MORk3AUrQAElWBebC92T8aK8le5Ne9IOPe3m79od2/iZRTLPjTEACw4dAxWAq0LIl
 Nbfc58jHNiOieAz6Fsf/6ttOegsKnaYKDds6AVzzqhEAAxCA8xy3ZnwYQYmZ3fnJP8
 UTaPQwt7hGzhEJQ2KwkG9QfN172sCiD0hPzFBU6c/j1GfBge/+x7BevqT+tFj45XL5
 AReWpz5axKrG5sfnaHIuUxRCkUiPptVnl1sbtl9Glk15VhXxSu10ho7aSlzNxaa66x
 3k3A5hLKio1LA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HeWqqdY5
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] udp_tunnel: remove
 rtnl_lock dependency
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

On Wed, 11 Jun 2025 19:47:54 -0700 Stanislav Fomichev wrote:
> > There are multiple entry points to this code, basically each member of
> > struct udp_tunnel_nic_ops and the netdev notifiers. In this patch only
> > reset and work are locked. I'm a bit confused as to what is the new
> > lock protecting :S  
> 
> I though that most of the callers are from do_setlink and there we have
> rtnl and we grab rtnl+lock during the sync. But that doesn't
> address the suspend/resume vs do_setlink race, that's true :-(

It's the UDP tunnels that add and remove the ports usually.

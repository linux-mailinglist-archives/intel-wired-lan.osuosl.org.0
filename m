Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53866B97E70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 02:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7DCE612BB;
	Wed, 24 Sep 2025 00:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xmNu_RvAaqBv; Wed, 24 Sep 2025 00:34:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79C6A611C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758674083;
	bh=aPSEE5yvThtapyD9WZnsylEMQvjmCUmF4+liCuhLyTI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q7cZsYMrDS+f1gXoAJVkpCo3DhNK0J7jGlt8Np8Vn0BEotOW7TKCMkW4C64BbQ1YU
	 K0lYyEAVv86OD3Z/bqO0A2JWGki7hkLF8kpKbT6eF3lFlR6gsJ3mJe01hAaY8Qm+sx
	 hPnedVhbn9bJr8aKEOlE2P0zK+KU+22RSs4p0/3SijpBD5NYG42bzFryNCpHXt/3HE
	 Fb4U9slkQMzBZtB/logJeWKfQ1ZdHXD7gk8KpySTHaHzLK2OXpfnd/VgfBfQCAd59o
	 MFS5DayIcQM1r5aLc37JUE/Ty1bBCMNnOT/PEWmZYIoszhyUwvLGm5m+WkgACOBX+I
	 oY11MgQjfJ6ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79C6A611C6;
	Wed, 24 Sep 2025 00:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A5448E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96AE960E47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rivB7-cwLyFA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 00:34:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9012060E41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9012060E41
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9012060E41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 00:34:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 82D2E60287;
 Wed, 24 Sep 2025 00:34:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 878D3C4CEF5;
 Wed, 24 Sep 2025 00:34:39 +0000 (UTC)
Date: Tue, 23 Sep 2025 17:34:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <20250923173438.70295e44@kernel.org>
In-Reply-To: <20250922100741.2167024-4-vadim.fedorenko@linux.dev>
References: <20250922100741.2167024-1-vadim.fedorenko@linux.dev>
 <20250922100741.2167024-4-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758674080;
 bh=MUlCGvOcXs2ZvAxkuV33/94+CLAsgJdQJHeAek6wyO4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NbJppIum9AUbc9jfG7SSRc5VapzWaebxLtM4yWjg9XGlT2hys+zV8WlkQEk1bZFvr
 tdESol+ad08A+JZzUJ3iAYmDgn2ZSGy5i5nIhzVt90OdIwhtZtrqPsPjhRKhm6KSdS
 cHtlt+6F1QI6vwasX10wdn+t8cuyP3/tanSI1w5e3LnxLPl1oq2tELCUXK+nE24r5O
 f+DV/tiPt48PkoRr9QduPlMERlWxnFfExHWqlIAn0wMighVMtdrh6XyRmtSHmvjU+x
 972NKGCYPSE5ZBMngNw199xJFj1lBa14dxh5A1vGBGnnTHGJIWzux5vSxUHSifyAJI
 9hb534oVsNdEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NbJppIum
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/5] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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

On Mon, 22 Sep 2025 10:07:39 +0000 Vadim Fedorenko wrote:
> +#define MLX5E_FEC_RS_HIST_MAX 16

I'm guessing you insist on the checks because 
struct mlx5_ifc_rs_histogram_cntrs_bits hardcodes the size of the hist array as 16.
Please make this define use ARRAY_SIZE() or some such, instead of this
random looking number.

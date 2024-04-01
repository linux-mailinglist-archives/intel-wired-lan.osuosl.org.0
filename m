Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B048939DF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Apr 2024 12:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2015D4048E;
	Mon,  1 Apr 2024 10:00:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gv1IvRBZGdMx; Mon,  1 Apr 2024 10:00:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2120404AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711965635;
	bh=t5l7Bj51pQPanG8ipQJgFoUfRggyG/vrrBtcyWRMdKY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pAzOganTQHUbl1iHy+gKhuLOFwzaH4o42/AMfi508GzUz7vZ01NMqmJ6paxf7bKTn
	 HM8E9vq2f+Q+eVi5He3WoaUZeJJTinx+UMbgn5N1/+XrRuKDN56IHFpJHTFq33ApOi
	 FeXEaaMw3iXWE6mIRR5uiqmbieThHSP4O5FiC46wMqJ5YMFwKkuOzBPQ3qRPrWzFaV
	 Pyvd+mCuC2rJxGEuVSRYc2CsWj2IhfLfHbTWvcGRZ7LjCmCNf92HqVJH72i/hoIuD5
	 obNV0j6zNgAzyW1h7piT6eHN87hJpZNNEf5QUTuVj3bLqHG/mRlFDmwmeRGbyGgpcI
	 8aKtKmWiDhYHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D2120404AB;
	Mon,  1 Apr 2024 10:00:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F17741BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 10:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAD5D81A1C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 10:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u3g3-2EiLr5h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Apr 2024 10:00:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EDAA7819BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDAA7819BE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EDAA7819BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Apr 2024 10:00:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9ED1960B9F;
 Mon,  1 Apr 2024 10:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4ACBDC43390;
 Mon,  1 Apr 2024 10:00:31 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 310E1D9A159; Mon,  1 Apr 2024 10:00:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171196563119.11638.12210788830829801735.git-patchwork-notify@kernel.org>
Date: Mon, 01 Apr 2024 10:00:31 +0000
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711965631;
 bh=avnVeOJaQFjaYOjK967D1lorb/XUUS3L6ARM3VnA0N4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=j3SqtwPWNed9OJQrDlUNqkCNeykoHdIccQ4hdEtAlInzF4sYk2/yyfI38Mbbg0J2m
 coTjUL+XJeEycTV3oy9T6Ca1GqKip1G5HMsjt+0boFZeoWEyS2M4RRSpzB0Ld6ETIm
 NnukEsEeIHsv8y3lWXnKkIRPc5W+iRb/l5kZithFBiBc8usbyGyjDDvflPDF9NhB+y
 DCmLE8hwn7mGdVq+k7TWDR3snfgVvfyod+C3mhgk3exRnif51eev9ETSMMzMt7wt5C
 Hv4siYarq/rQ+tq+tWb7vopsZGrEK9b3DFatSVeXOiUdaf49ZoJFWOWMSeYz5pOkwT
 HFXSmk9gTKKhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=j3SqtwPW
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 00/21] ice: add PFCP
 filter support
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
Cc: yury.norov@gmail.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 glider@google.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Wed, 27 Mar 2024 16:23:37 +0100 you wrote:
> Add support for creating PFCP filters in switchdev mode. Add pfcp module
> that allows to create a PFCP-type netdev. The netdev then can be passed to
> tc when creating a filter to indicate that PFCP filter should be created.
> 
> To add a PFCP filter, a special netdev must be created and passed to tc
> command:
> 
> [...]

Here is the summary with links:
  - [net-next,v6,01/21] lib/bitmap: add bitmap_{read,write}()
    https://git.kernel.org/netdev/net-next/c/63c15822b8dd
  - [net-next,v6,02/21] lib/test_bitmap: add tests for bitmap_{read,write}()
    https://git.kernel.org/netdev/net-next/c/991e5583647d
  - [net-next,v6,03/21] lib/test_bitmap: use pr_info() for non-error messages
    https://git.kernel.org/netdev/net-next/c/f3e28876b6e0
  - [net-next,v6,04/21] bitops: add missing prototype check
    https://git.kernel.org/netdev/net-next/c/72cc1980a0ef
  - [net-next,v6,05/21] bitops: make BYTES_TO_BITS() treewide-available
    (no matching commit)
  - [net-next,v6,06/21] bitops: let the compiler optimize {__,}assign_bit()
    https://git.kernel.org/netdev/net-next/c/5259401ef8f4
  - [net-next,v6,07/21] linkmode: convert linkmode_{test,set,clear,mod}_bit() to macros
    https://git.kernel.org/netdev/net-next/c/8fab6a9d72e4
  - [net-next,v6,08/21] s390/cio: rename bitmap_size() -> idset_bitmap_size()
    https://git.kernel.org/netdev/net-next/c/c1023f5634b9
  - [net-next,v6,09/21] fs/ntfs3: add prefix to bitmap_size() and use BITS_TO_U64()
    (no matching commit)
  - [net-next,v6,10/21] btrfs: rename bitmap_set_bits() -> btrfs_bitmap_set_bits()
    https://git.kernel.org/netdev/net-next/c/4ca532d64648
  - [net-next,v6,11/21] tools: move alignment-related macros to new <linux/align.h>
    https://git.kernel.org/netdev/net-next/c/10a04ff09bcc
  - [net-next,v6,12/21] bitmap: introduce generic optimized bitmap_size()
    (no matching commit)
  - [net-next,v6,13/21] bitmap: make bitmap_{get,set}_value8() use bitmap_{read,write}()
    https://git.kernel.org/netdev/net-next/c/b44759705f7d
  - [net-next,v6,14/21] lib/bitmap: add compile-time test for __assign_bit() optimization
    https://git.kernel.org/netdev/net-next/c/7adaf37f7f10
  - [net-next,v6,15/21] ip_tunnel: use a separate struct to store tunnel params in the kernel
    (no matching commit)
  - [net-next,v6,16/21] ip_tunnel: convert __be16 tunnel flags to bitmaps
    (no matching commit)
  - [net-next,v6,17/21] net: net_test: add tests for IP tunnel flags conversion helpers
    https://git.kernel.org/netdev/net-next/c/5b2be2ab76d1
  - [net-next,v6,18/21] pfcp: add PFCP module
    (no matching commit)
  - [net-next,v6,19/21] pfcp: always set pfcp metadata
    (no matching commit)
  - [net-next,v6,20/21] ice: refactor ICE_TC_FLWR_FIELD_ENC_OPTS
    (no matching commit)
  - [net-next,v6,21/21] ice: Add support for PFCP hardware offload in switchdev
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



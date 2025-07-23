Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 151AAB0FB21
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 21:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 914C3412BE;
	Wed, 23 Jul 2025 19:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yEepdAQ-uhHZ; Wed, 23 Jul 2025 19:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E845412C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753300239;
	bh=MSN5oDyythOLuinb0IG27KapVbySgS51yT8RwugRQeg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=24F5GD0eqZX57q1uuBfw59S1oL5Gr0GcYygDF6aFyTb877+QCAMYM8+yc53Q6GYvU
	 lnbCrVv54dIAYaAoc0dx38XQwGfQsJr2R70bz38h+vwhJHSD8WyH/MQDQZGvRxO8xL
	 2LmTyYJndit4C1d985+M7VCvgEJA1Ib68nAYFx0LaMTYbDGCghgRuAZDa2c4Z2yS0k
	 Uu2RdXtL0b1SOVjv/isp+DmQZcQnSqKv7WJq6A4VYxTsw2MHFZMotNi9h0RIzdh1Uj
	 BSC06IXxd+1pUGjJtgVl8E2wjqPB74gNa/IRgAtEonzRX4xtj9FfMpBsT+1xQx/5sn
	 Q8fC+ndMWwPyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E845412C5;
	Wed, 23 Jul 2025 19:50:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C708DE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 19:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9014403B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 19:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Xpac2y75ol2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 19:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B95454018F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B95454018F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B95454018F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 19:50:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0C103600AC;
 Wed, 23 Jul 2025 19:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CE5FC4CEE7;
 Wed, 23 Jul 2025 19:50:33 +0000 (UTC)
Date: Wed, 23 Jul 2025 20:50:31 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Kunwu Chan <chentao@kylinos.cn>, Wang Haoran <haoranwangsec@gmail.com>,
 Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
Message-ID: <20250723195031.GN1036606@horms.kernel.org>
References: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753300234;
 bh=LGcjkGATmLPxpS7ECi/3/0+JXTkhYN+AR1f9tzDK3sk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jXEklpbbz1tX/sWH4sr5sIuFdPCdKy5ivOc5P4MdWN1vntWPag9nEgzjxkfQ2aMJV
 yz2qW+J5Q0+sAen9aEY2P9dehdzOYmcirGronbeXeVv3IrD/xeDTqUL1wLffAjsyiT
 O1iDFQnnFGyzdJTwt+I8TuL1C9hB/XfRkT1JbfZ5napwqGwAxcndkY+xs2A5bgc9Lj
 pyPUO+BGPyhDLiQP0qQyrrFICIwECbU5DbwGfnb9AGWEAPiPfOTKhCpMl7a0piWa7z
 3jfrLFDrZD8mrqofgVSI5hOosDyliRQhCxFeg2lpZU2fcT35mV+bVS2hMcCC8UXDol
 zxsTABQkcKt/w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jXEklpbb
Subject: Re: [Intel-wired-lan] [PATCH] i40e: remove read access to debugfs
 files
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

On Tue, Jul 22, 2025 at 05:14:37PM -0700, Jacob Keller wrote:
> The 'command' and 'netdev_ops' debugfs files are a legacy debugging
> interface supported by the i40e driver since its early days by commit
> 02e9c290814c ("i40e: debugfs interface").
> 
> Both of these debugfs files provide a read handler which is mostly useless,
> and which is implemented with questionable logic. They both use a static
> 256 byte buffer which is initialized to the empty string. In the case of
> the 'command' file this buffer is literally never used and simply wastes
> space. In the case of the 'netdev_ops' file, the last command written is
> saved here.
> 
> On read, the files contents are presented as the name of the device
> followed by a colon and then the contents of their respective static
> buffer. For 'command' this will always be "<device>: ". For 'netdev_ops',
> this will be "<device>: <last command written>". But note the buffer is
> shared between all devices operated by this module. At best, it is mostly
> meaningless information, and at worse it could be accessed simultaneously
> as there doesn't appear to be any locking mechanism.
> 
> We have also recently received multiple reports for both read functions
> about their use of snprintf and potential overflow that could result in
> reading arbitrary kernel memory. For the 'command' file, this is definitely
> impossible, since the static buffer is always zero and never written to.
> For the 'netdev_ops' file, it does appear to be possible, if the user
> carefully crafts the command input, it will be copied into the buffer,
> which could be large enough to cause snprintf to truncate, which then
> causes the copy_to_user to read beyond the length of the buffer allocated
> by kzalloc.
> 
> A minimal fix would be to replace snprintf() with scnprintf() which would
> cap the return to the number of bytes written, preventing an overflow. A
> more involved fix would be to drop the mostly useless static buffers,
> saving 512 bytes and modifying the read functions to stop needing those as
> input.
> 
> Instead, lets just completely drop the read access to these files. These
> are debug interfaces exposed as part of debugfs, and I don't believe that
> dropping read access will break any script, as the provided output is
> pretty useless. You can find the netdev name through other more standard
> interfaces, and the 'netdev_ops' interface can easily result in garbage if
> you issue simultaneous writes to multiple devices at once.
> 
> In order to properly remove the i40e_dbg_netdev_ops_buf, we need to
> refactor its write function to avoid using the static buffer. Instead, use
> the same logic as the i40e_dbg_command_write, with an allocated buffer.
> Update the code to use this instead of the static buffer, and ensure we
> free the buffer on exit. This fixes simultaneous writes to 'netdev_ops' on
> multiple devices, and allows us to remove the now unused static buffer
> along with removing the read access.
> 
> Reported-by: Kunwu Chan <chentao@kylinos.cn>
> Closes: https://lore.kernel.org/intel-wired-lan/20231208031950.47410-1-chentao@kylinos.cn/
> Reported-by: Wang Haoran <haoranwangsec@gmail.com>
> Closes: https://lore.kernel.org/all/CANZ3JQRRiOdtfQJoP9QM=6LS1Jto8PGBGw6y7-TL=BcnzHQn1Q@mail.gmail.com/
> Reported-by: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
> Closes: https://lore.kernel.org/all/20250722115017.206969-1-a.jahangirzad@gmail.com/
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I found several reports of the issues with these read functions going at
> least as far back  as 2023, with suggestions to remove the read access even
> back then. None of the fixes got accepted or applied, but neither did Intel
> follow up with removing the interfaces. Its time to just drop the read
> access altogether.

Thanks for the excellent patch description.

Reviewed-by: Simon Horman <horms@kernel.org>

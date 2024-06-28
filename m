Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD9891BEC8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 14:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 164C841D6D;
	Fri, 28 Jun 2024 12:41:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IOn62Ij_oKzc; Fri, 28 Jun 2024 12:41:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BD9B41B84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719578495;
	bh=J6CGAraPmwMY727tAAIWGw0QBWQ6RIWN0XweS8FVSKg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tkAXGFPhXN5brYJ8n6hiGD592Xewz3eS72RvzIS7rC9/Aj6W2VGiOfq1XoeErUVE/
	 SrmibEr3nPb6OghEjmhimrxvk8SkdOCnvMGlXwpdSpkU8Y2XL6q0c54N+g+GWVut0W
	 nCsraL4XXlw+o+FVXknNVDuQBf56tOXhPI83kJt+FX2htnKPEY8AVmlxF9SmU9771y
	 YYGl4DZTpuSiJmRC6Zv6wIfb8LpwJTOTEMzJZGRNUlbbK8huCI6L7I02AhlnhIJ0iS
	 leMMa91DeUBeojnN9mUDqZOz6Xq39r2Q+ukRbPLibgw5IOPlXhttG/KPV+RCALryeC
	 7Z8hJOZo/GqvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BD9B41B84;
	Fri, 28 Jun 2024 12:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED4041BF41C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DAEC36078D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OH1KpICpMceJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 12:41:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 243BB6077F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 243BB6077F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 243BB6077F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 12:41:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 57DA96216C;
 Fri, 28 Jun 2024 12:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC6C5C116B1;
 Fri, 28 Jun 2024 12:41:30 +0000 (UTC)
Date: Fri, 28 Jun 2024 13:41:28 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240628124128.GC783093@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-5-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618141157.1881093-5-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719578492;
 bh=Q3suI3/uSoSrj6ynfxHKkNKN26AZN/vpAs3rVKR4cMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ym4Idk9Y1MgnjWmeTlzbm4DaUbXbQvF5R/n4DnJc0rGYa+JIiOrigb5i9Z/sBp5Qj
 1mzNSHo84/D2BHY7TbhQDFvtJnzQpkwpGW5WoDH3MxurrE0XnqVLz6pcFBE0UohPBm
 xrqNYkf1Ad8XzCEXcOES20Q+JCnV2NvliMTeOeagUz7K6byQK7etX55kMCMzVI8YZx
 oo8D5nbb5UrZ9FLHG8wdddMUMhz/yeHLcqaL2cX3+rdFPcljw+iUa1GSMxdzZcHcTv
 kAI//e3iszcWurbZRHfCu3y+p1/nGQUGFH5CRWToB1n8UdSNcrCWq7kHFIiAdG5a/6
 zbHkeWsIlwZww==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Ym4Idk9Y
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/6] ice: remove unused
 recipe bookkeeping data
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 18, 2024 at 04:11:55PM +0200, Marcin Szycik wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove root_buf from recipe struct. Its only usage was in ice_find_recp(),
> where if recipe had an inverse action, it was skipped, but actually the
> driver never adds inverse actions, so effectively it was pointless.
> 
> Without root_buf, the recipe data element in ice_add_sw_recipe() does
> not need to be persistent and can also be automatically deallocated with
> __free, which nicely simplifies unroll.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


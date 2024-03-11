Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3BA877C86
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 10:21:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0357140531;
	Mon, 11 Mar 2024 09:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZ3m7ztZ2MCm; Mon, 11 Mar 2024 09:21:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 091B44057B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710148908;
	bh=kmW2ezkRDKtN/bCIm9qyB7KbpR1lBJ5j9/naXLoXoMQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fFW/JaZkaqLdcJDbr1Wcj6dRVsx0c+pDtWbGpgXa08h7fKlt0QytzOde1npwuc+hE
	 NLwF0s4OZPlnIoAJbKuyR9L0YRWgJVYPSfDkQHAlDLdWrENdKtaD6fY2KQgjgIsOoI
	 n4al1P9+cd5XLXYEMn2MlO1oNihDFlqTrLvZQJ2cwIAxb+U8h6xCc4JT8ohboz5WJS
	 c1pNzg2gBdOaddVHgO3yaG2uDAmGdqLuuzod2HREIDT7cdg2W+ZpsI7molckrBSt6d
	 kXiASbOafNU64DQsjE9LZslR/quppy6HIDxNHToWT2ho0iBetdmUxnLNzDuhaa3WaM
	 zyljuxyLcyP/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 091B44057B;
	Mon, 11 Mar 2024 09:21:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5877D1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E949813B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vcS4hm51LSov for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 09:21:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A767813D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A767813D0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A767813D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:21:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 14A44CE0B01;
 Mon, 11 Mar 2024 09:21:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B327FC433F1;
 Mon, 11 Mar 2024 09:21:35 +0000 (UTC)
Date: Mon, 11 Mar 2024 09:21:32 +0000
From: Simon Horman <horms@kernel.org>
To: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>
Message-ID: <20240311092132.GE24043@kernel.org>
References: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710148898;
 bh=YVJOlQOojPODBcew3KZ9YmexhpJGIyFI7WC9zEWcJKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MyKy6UFXJtynmo+4VUt07TmQRPrtBSXDbwcA8IiEe9bD3+TCK9tFPdNUVBT3wdVPX
 KF1mR05eoi/xA7gCn08vEKlPSXxvM3v36e6thWQJS860HwPO14aWCTC6O8+yyx6tbh
 wBu1FZr6LDCqhQuW6TUQZTFxYwyx/lYrP5fndpTWbBSOTs9oApPWk7kHqpGZ9vcUyn
 k+WbbAt3hKOU2hH7J1sNxUcH+jBPHv5Qkpb4Vdg4fTeYho5ISHX9f3kUQuIhvcc/7s
 7gehzM0J+NfSn2Co3ucXWbhIa2VHPR+cl5FXWERUnXYS3qG4wwYs94Yd4EzKGt+Mrm
 YOC15Ew/pjPEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MyKy6UFX
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: Remove
 ndo_get_phys_port_name
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
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 08, 2024 at 11:58:42AM +0100, Dariusz Aftanski wrote:
> ndo_get_phys_port_name is never actually used, as in switchdev
> devklink is always being created.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...

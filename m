Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49726934D8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 14:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD0D580F68;
	Thu, 18 Jul 2024 12:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NedR06ZML-bq; Thu, 18 Jul 2024 12:57:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B16280EE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721307422;
	bh=fUtmuMJ8u9Lm+vQ02LJoB90CRa/TfKIR45InECtvWF0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gznOhejg0CyXIY88XfgyGMqAvlVn4ZQPzEr3WZTsayEedf8EICxQLdlrLDyIKQnUe
	 9WhTQOaYJC26QX/kBatY+OIl2vo1ZOvV84t4QdRSxowGd46rGtWT3iACA9+J2zRfl3
	 46tl8fj+PZz3ycpP4jmRFSqdYW8oL1cQMdAgF5mzg9qte6s9EPhsaBgjGs6ahQ2txk
	 1OXc1ZTV2EfsCOB7jSS0nFHcu9AIfYPKZh/6ba+/hjtKXQ+hyBoagBwBl3c1A/6piY
	 f5hhestKk+RTiKgkZo7w6ceU6DIc9R73oXTgwp+rihwCRcNOF5NKMAUoPvnN7v2zaw
	 yoG6r0dG9lqyw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B16280EE5;
	Thu, 18 Jul 2024 12:57:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106E61BF35C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 12:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06AA740420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 12:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fsuo4x09ylJt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 12:57:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 33A7E40142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33A7E40142
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33A7E40142
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 12:57:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0640561B33;
 Thu, 18 Jul 2024 12:56:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7B4FC116B1;
 Thu, 18 Jul 2024 12:56:57 +0000 (UTC)
Date: Thu, 18 Jul 2024 13:56:55 +0100
From: Simon Horman <horms@kernel.org>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20240718125655.GA616453@kernel.org>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
 <20240718105253.72997-4-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240718105253.72997-4-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721307418;
 bh=nY89lkEzEoloJFoeBW/QlRZkdyq6KK8D/Em8VuTIUKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IswNt0xqn9vwPQ7HG0kSSTFoZtkuVjRQ9QcplDMjOqsBefce/8Pq4wE039bUU22Js
 6cOLBl/MPuU3i+srDCxfHgVuEgp+C3ysKpCWsWHjAn8bGnKXaiVK8eUjcCej6sYyKe
 UXsLLprIYLQ8bxMl8OATIr8jeYX2AEPE4vDLFMeRxZZmsSPFycchUVtQhRf16w1Spo
 Se5tjtlOAP2o4/TvctjyQFpTK7jU35o316xpPflVVvNlTE1mvMfNgl+yQebDnaEVhK
 MtagmNWMHLoDKPhQLQlaGn/aMNcYJ7o5M88LJsm4p2Qi6dcrexeG4OyUv7BinOhbSP
 cEshLzNTo9YbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IswNt0xq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: Initial support
 for E825C hardware in ice_adapter
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 18, 2024 at 12:52:51PM +0200, Sergey Temerkhanov wrote:
> Address E825C devices by PCI ID since dual IP core configurations
> need 1 ice_adapter for both devices.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


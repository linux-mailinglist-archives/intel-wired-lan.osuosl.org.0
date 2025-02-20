Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0974A3DAFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 14:13:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F7DA839E5;
	Thu, 20 Feb 2025 13:13:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWExQYlI-9Wi; Thu, 20 Feb 2025 13:13:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46BCA83A80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740057205;
	bh=n1JeLIJD63fdITUzD5qYNGYN1nLbQdrPH3bWbtzVM78=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sl8OIkk1iDRQlacFq5nub6qG3ZUd5bvOIv172Xg8IwQtaYU2qm4NQIhhqdZWh6lil
	 FbdtO3vCaAxAnOXQQcqf37/5zubjeZcRfEvR8YK9DoBY7tPiVmpyOh/aVihhnjCf+A
	 hQ+u3pT6UbBejgm+uRYohmfkpa+QDsvnqvmHUAokj7XCgJzSWlrY2VJqxNh6zyDnj3
	 pOPMVYLGkS5Hjt/jijUOUvHL7yC+PhL6X5LFGIDSEVCeqT0a9QEX9lihQsb97jPU3W
	 7tPbpDKVfEwPc59za+Zt8eWbq4s1UbC2rUW0sDBR4Lzq7/lQ5ZulIoQlM6DD1BucLS
	 RSoVBPhZ6px/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46BCA83A80;
	Thu, 20 Feb 2025 13:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 07BC1D92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBB386084A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nSdEQ3BeIQoK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 13:13:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 44E4E607DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44E4E607DF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44E4E607DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 13:13:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9D6845C587C;
 Thu, 20 Feb 2025 13:12:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ECEBC4CED1;
 Thu, 20 Feb 2025 13:13:19 +0000 (UTC)
Date: Thu, 20 Feb 2025 13:13:17 +0000
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250220131317.GV1615191@kernel.org>
References: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
 <20250207180254.549314-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207180254.549314-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740057200;
 bh=kfrR8B+O35qz/zXE38aAnrq3gSnLI1V0kGwQVK9LXOM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y8bh0hag/oeJyibPwalbyILGMWc5capJvTuVsZagKuxBiFUdaXwMfK4fIgxw6ZVME
 /9FZhC+NxCeCaM4Fdq4p8ySw7V9sIuUL8i3SNrhp+4wrgqL3zPPk8Mb3iZVb7P3Fle
 6YoBkb+waeif/e3UyVTaeRjAMnn/1kyrxvMNu5011f5B/Ua2o1antuoOo6kSWHre+C
 5Py5DPktXrxE7ge4158MV1y0WAQl2b0LF/fopldp0rrNJj/6L5TSLO7VjA9iEZR7e1
 12CoSz2bWUh2SGEvTEp+iznw0Wu9hLHcxB77qsmKr/TYsu3AL53savO4Bp9Nj9Dk51
 79brcgJBiQuEw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Y8bh0hag
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: redesign dpll
 sma/u.fl pins control
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

On Fri, Feb 07, 2025 at 07:02:52PM +0100, Arkadiusz Kubalewski wrote:
> DPLL-enabled E810 NIC driver provides user with list of input and output
> pins. Hardware internal design impacts user control over SMA and U.FL
> pins. Currently end-user view on those dpll pins doesn't provide any layer
> of abstraction. On the hardware level SMA and U.FL pins are tied together
> due to existence of direction control logic for each pair:
> - SMA1 (bi-directional) and U.FL1 (only output)
> - SMA2 (bi-directional) and U.FL2 (only input)
> The user activity on each pin of the pair may impact the state of the
> other.
> 
> Previously all the pins were provided to the user as is, without the
> control over SMA pins direction.
> 
> Introduce a software controlled layer of abstraction over external board
> pins, instead of providing the user with access to raw pins connected to
> the dpll:
> - new software controlled SMA and U.FL pins,
> - callback operations directing user requests to corresponding hardware
>   pins according to the runtime configuration,
> - ability to control SMA pins direction.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD69C268A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 21:27:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B540846ED;
	Fri,  8 Nov 2024 20:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDAzxpybmnVD; Fri,  8 Nov 2024 20:27:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF73E846E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731097664;
	bh=iZFC8UxDwQHlst/4qrf+xJ+CC86Cy5SYSewXoZr7spU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qG3EUwvigzaWFwxjW0K6asXmANzcvNSdTsmpaqvzUkpJwbLKXfEv9ZeqZKpSEJ9Cr
	 rNLanYiuh4bhePhHK6j0DG7r5AMr/gCwjgwZV2dZlVCWQvaa5U9OEphlvCHeE5Ewk7
	 celilmhgEeMnBMkunkjL5DEQyqjqmRoOmC4xjZrgWt577Qk7wrBICw8PI3Khbv0LYI
	 2AiNZLlKL+X/frPcDp7vHd4LqRDGG0cf6cJtipJibpOLrKS9qoCrAMNX2ytOby1d/T
	 lyGeuG3i//GeckZ82c4f6tv/0lgXOg2DgrPpdTfIMPJZGh0Gi8ZYHSu8Xd4/x4yv3D
	 wDVA8J45yINjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF73E846E9;
	Fri,  8 Nov 2024 20:27:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 295A4D8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14287431EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:27:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1N3itYZjUdO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 20:27:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F36C431ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F36C431ED
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F36C431ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:27:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 936695C5B8B;
 Fri,  8 Nov 2024 20:26:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B9BC4CECD;
 Fri,  8 Nov 2024 20:27:39 +0000 (UTC)
Date: Fri, 8 Nov 2024 20:27:37 +0000
From: Simon Horman <horms@kernel.org>
To: Przemyslaw Korba <przemyslaw.korba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20241108202737.GI4507@kernel.org>
References: <20241107113257.466286-1-przemyslaw.korba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241107113257.466286-1-przemyslaw.korba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731097660;
 bh=Mtk4M7wTEghMQKho85bAKte8Qxs2DGGa6/kh9xByoZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PFeVnsPOuTTMrtzHRehk5QDVPph7DwMryciEuYeeJGu1dZb0l0JFSw6iuyyHVtZu8
 yczsPl91Kr/Zzxekyc7cxlQJbkuEIcUj8C8EDUQBe+O83RMw6XrO3Z7UfY5JAkrnFw
 dGlAYlucPYLmO1BVHyudbiK4WNnqvZ6tDZm3HZJbnqfEN61RqcsNb/JQQDqbwloRT8
 19PQf6g6VrG/nKWIbtkiHr/RrsF64OC62eyHz86JpJw5tkpdSYYEf0whzjNybSs3nG
 YPVrOjBepTTL/WAdAF5KNGlddmAfPVjUXLoqy8IJLlApWCghd9IdywqPmy7dFEJM/U
 tm2ppA6nvfgPQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PFeVnsPO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix PHY timestamp
 extraction for ETH56G
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

On Thu, Nov 07, 2024 at 12:32:57PM +0100, Przemyslaw Korba wrote:
> Fix incorrect PHY timestamp extraction for ETH56G.
> It's better to use FIELD_PREP() than manual shift.
> 
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


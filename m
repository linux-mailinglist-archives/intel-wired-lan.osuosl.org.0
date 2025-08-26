Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC53DB37096
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:36:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 645044050D;
	Tue, 26 Aug 2025 16:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpFJvzeJLjh9; Tue, 26 Aug 2025 16:36:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7E924050E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226217;
	bh=jkOswG6qieN/shBoOaHyFGLLe6NB1PyA4m8HjLcbLBg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yVjr9MYw0vuxO8IYY9QjAGTXaem7ybRv0E6/gAHhuvY+BI8h97Ot+AsYnE/3WoEZd
	 8W+h65DOQjZ/aRsagAfOU90STfqbp7o4cg06EZnh3aa1Bhhu4N4NoZ8DzcLS9W3kuk
	 oIFj3rDXUdWMzuGZ+3ZLYC5tQ/j3UfVFPOWKt0D072+GfYKvDWtjztlvxMgFgDIlEg
	 hfrHsCIHNTYA8bloZTZC2e+ixlDG5ItOwERaWBPdNZSj1fbuPKE7/nqjReRL/4tnlz
	 /7RqRxXknxGPCUh4FS66VDKakheH8Eia9YKNQqX5XXoI+nIvKGDNGpTun8cuCnqKlP
	 VSoYq1DBAZTGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7E924050E;
	Tue, 26 Aug 2025 16:36:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D390114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E2D580A64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wJoUF3L5nZi8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:36:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A3D5980A61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3D5980A61
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3D5980A61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7572C447B2;
 Tue, 26 Aug 2025 16:36:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2DDC4CEF1;
 Tue, 26 Aug 2025 16:36:52 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:36:50 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163650.GL5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-9-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-9-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226214;
 bh=RUebI+LLPCOnHLuFhlypq+cjnus+GGm+ptjDxaXfbq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IQjC0POhP2Jf52omzRG8r/pqXyD3uR+hdK4nF8NXRDiufluqzJrkrV24HLIxfl8NK
 Q39VyyxGu+Z2QrrZZ9kevhZxdJ1W+ROdFqn12LGeq6IjazSRxkg5kK0x+ExkW4HQcw
 DfXX8qShi0ttEwM2JGii5VNL+oMeRn82ZIEegIRp/+nPhdkCEnTKWd1NmiE00K38So
 3APgFrD2kyk21EPSIg2SGJwwKy7p12LKoRVoBqEal/TcaIgC+6UxxKIn5ooJU72OPz
 t5mOKcvdGDjWz9R9xMQ4yRkuFZsrB2aIeAaPPXG/rh+KhRNRIItr8tvdFjTn2KsBOP
 DsFZIEOhr4Ltw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IQjC0POh
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 8/8] i40e: improve VF MAC
 filters accounting
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

On Wed, Aug 13, 2025 at 12:45:18PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> When adding new VM MAC, driver checks only *active* filters in
> vsi->mac_filter_hash. Each MAC, even in non-active state is using resources.
> 
> To determine number of MACs VM uses, count VSI filters in *any* state.
> 
> Add i40e_count_all_filters() to simply count all filters, and rename
> i40e_count_filters() to i40e_count_active_filters() to avoid ambiguity.
> 
> Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


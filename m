Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EABB9E911E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 12:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D7FD403FC;
	Mon,  9 Dec 2024 11:00:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fp5CWxUwcA9z; Mon,  9 Dec 2024 11:00:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DCA340309
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733742000;
	bh=uzk9g9OZ293ZjNx1hlFnAQlUPHr95XO3d/vOYsD5P98=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o98ERPFnlhKyQnZpDNZ5kZW/TXHnjDMJFdOcu9pwaEGWAmpxveAJBJlzmwa1WraMD
	 siSGQHkn2xhwJokFLVdZlsigGwZreI226fba9n+k5jkqYUDmWuYdCmsYBM179QDCqA
	 lzl0BoeRCfXDGRSmarxZ6ZdSEqs6eQ9YNbBaKrzsN4exkQPOXi8M3FxvadKqoorBV2
	 cKEL7hOCYEK9HkDp6EwsoVbwoSQl3wP6cxm+szUOyU05Uw1JqyBaAGhWx6pKRfcUQo
	 OVw1BUDaeBkEZJnvCyx8xY6knu6NxUpnIU/VW79aKGS+pPUa2A69DrhdmU/XNW0fdt
	 j9j7oIEroe0QA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DCA340309;
	Mon,  9 Dec 2024 11:00:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E75AED2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 10:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEE1C607EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 10:59:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3TfvZ9OjSMpr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 10:59:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4B9FB607EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B9FB607EB
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4B9FB607EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 10:59:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3F077A411D3;
 Mon,  9 Dec 2024 10:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DB8EC4CEDE;
 Mon,  9 Dec 2024 10:59:54 +0000 (UTC)
Date: Mon, 9 Dec 2024 10:59:51 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241209105951.GZ2581@kernel.org>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205084450.4651-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733741995;
 bh=vVSn0qA0S1DI2U8e2PuF/3DS3hHPajmewcph9qnd/KM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q2qXj8WwuRXaF71dpnqWMwhshDZadQuPqAMKkUoxd22VzdHn6v+ci+eDOhYC8S3bw
 iB7+6NEG/tcYBNezSGPpJLFM+tUZ4mcgSRiwAcTcwddos7qS5fusaDvCyveWlGegEP
 z40T/T5i8eeqwO1Dn7LSqAV2uaei1nyZ752xYVFPfm+TPltFHVJp8zVmAqxUcHJbjR
 aU1TseIAH2VzJNBou5tVbvMsONsAJUWFViF7cUKho3pKJJyFKqQ17Df8wobSWiePl/
 j1tgbyAYSpHwIaqo89sMuow9caBh2PfGeiI8zijSB6uHZ9ZCvsX6xJzxk0PWwFh5jh
 ggO0rJSsSR4ng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=q2qXj8Ww
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 5/8] ixgbe: Add support
 for EEPROM dump in E610 device
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

On Thu, Dec 05, 2024 at 09:44:47AM +0100, Piotr Kwapulinski wrote:
> Add low level support for EEPROM dump for the specified network device.
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>


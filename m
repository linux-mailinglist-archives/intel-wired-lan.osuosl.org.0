Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DFE6796B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 12:33:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C0960E71;
	Tue, 24 Jan 2023 11:33:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19C0960E71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674560030;
	bh=fC44LLRxAoWskmT4YEHm+WBj3hYRXWxt0UUglUMd8Rg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1zFIZdNv2z3UPZO36w8kr/ZOjv0Ib61QJcuEJyIduIKtHI94uG5eLfkXsV4Fpj4f
	 7Ry/zDNdqe+adbK6dWmHmZf+huoleZPkGb56fwRdaxnMUGHcGl1N6/QMZo2/6afdc0
	 1KRv9vEfnD0/lXwyISUFmROsCAdJO+zg+J0vv8p4XpCtJ9x18ZXpwoox3/RiI6vuM8
	 dXo7Kk2fqs0fSfOEXDd9XxG7d+4pYdOvdxz+BqESmi+AHL1GHLnbWKiIVBNg61w//a
	 +nKAy8vYVT1ok1Inz8FQXF2KafN7NsCpU8tW5ylYxLnGMP2e/T6QnHqC68L9cYX2xt
	 UyGTlps2iWlaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmBtUcmc31tm; Tue, 24 Jan 2023 11:33:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 340B760F4E;
	Tue, 24 Jan 2023 11:33:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 340B760F4E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 547611BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:33:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30F0B40C10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30F0B40C10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8qj5KFOoyAD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 11:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 706DD40C0F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 706DD40C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:33:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328364804"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328364804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:33:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639554572"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639554572"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.3])
 ([10.13.12.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:33:39 -0800
Message-ID: <7a387e20-68e0-4c08-7ef4-11cb41f79e51@linux.intel.com>
Date: Tue, 24 Jan 2023 13:33:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-9-helgaas@kernel.org>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230118234612.272916-9-helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674560023; x=1706096023;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tTmTjWwJXmzO49OJW8xcC/9yV2HJVoUxBo+EOvwGkKk=;
 b=QxjbXdaPurtmLBjytmYtkXymycO8yJiEr1ikUxenwmEEMCIdeP4EgW36
 OtlaPgL/vulq2TuWaIkPemAIGygE73THeT852qNyiaokf5SnGDOINQ2qD
 l8AYzTMBFVR0BqsdFS9PF74Y0h8J93r5KY781XJb4oUN7flVjLdHOGpQ2
 N184dbLPxZZbuNdT2SJVrEXgEAJa8cd/7o6oUYbbaDfGCx1nhJCLDzhEw
 ByQXorytV5hkVKqdJMcX2ty2vqVaPFxdDah3Z5KgYmAfibztfXKgy0UAK
 2ib4Q+YjxpYI6c+cULQwDyZsAXkud1ANhrYD4ARDDtNE5a/2ZJs7XucDr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QxjbXdaP
Subject: Re: [Intel-wired-lan] [PATCH 8/9] igc: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/19/2023 01:46, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 5 -----
>   1 file changed, 5 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

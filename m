Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DBD9A24E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 16:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F3A160A70;
	Thu, 17 Oct 2024 14:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mvvjodJLiBie; Thu, 17 Oct 2024 14:21:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D10160A3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729174919;
	bh=cRvnDpytGCSCx0xUQCPZuwoKk+1mLoGanrhgVFseNj0=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=C0bB+IX75lSnBPKjUgrBq9a1Sq+4JpJvsDEy8I5ImPd0YUq4AMivE9218IV1FuMl8
	 RnbX8vChzz9qMta1BD9RUYDUqmGBF5Co6OVQyKV/PbWU1njDr3ckb5tboLLweS1p01
	 KRc+c5+2/oKqImE616lmZuHbMNxBkEwWD6FYhTwHDb980UkwTuLt0uqXkV9vQt/bu4
	 bGzFwfMe3S2jwqfAgjGJHqDOcYWDu3Beb4zfwEA4VmHjFnfaNSIKL3vSK33WSerTjr
	 KxNOOMliUNGN6RIKDP9G6u+wLFY6yRNDUi5KhC5E4l9Iim4RbSOuQFIKvjwAqPX5j9
	 079jdi/eenjtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D10160A3A;
	Thu, 17 Oct 2024 14:21:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C5BB52316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E685406EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:21:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ksiwwBR173dC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 14:21:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6016740279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6016740279
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6016740279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 14:21:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C38C95C59D9;
 Thu, 17 Oct 2024 14:21:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA887C4CEC7;
 Thu, 17 Oct 2024 14:21:53 +0000 (UTC)
Date: Thu, 17 Oct 2024 09:21:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241017142152.GA685610@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241017131647.4255-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729174913;
 bh=TJxiR5fL2lynj8uABjj7XdbAFsYnPYmJljXDS5EcbhI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=FnIrR9ENRWy8tI+DCS8KAkeWLyg9IxZCpmJRbl1306BQazoEg+Gic67eFCyfA5gzW
 XvZWZvofSA3HfFUX2AQvmu9SZcq8FlKhpzZU7yU8qbbFnE/hI76F2vkQyR1B1608Vx
 gRN3UAtalbXxkbYWEE0cNsCXpH5Q929e0oU7kol07PGb8g4Z/gTNvhlYuDWvAYgSmL
 0aNjUnnLDGT4yoYqSFvfGuTOlNJ34uof55xLyqQl4LawyVwRMSOOgfgl9eRRa1xKaI
 6H1SOdDD2QmQeHTYywFCr+JxoKyEBlRoKx0fQKHeFX+Y8YcCyslarfFI7sc6gBUEmK
 ghp2JY6LAQJfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FnIrR9EN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] PCI: Add PCI_VDEVICE_SUB
 helper macro
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

On Thu, Oct 17, 2024 at 03:16:47PM +0200, Piotr Kwapulinski wrote:
> PCI_VDEVICE_SUB generates the pci_device_id struct layout for
> the specific PCI device/subdevice. The subvendor field is set
> to PCI_ANY_ID. Private data may follow the output.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  include/linux/pci.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> This patch is a part of the series from netdev.
> 
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 573b4c4..2b6b2c8 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1050,6 +1050,20 @@ struct pci_driver {
>  	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
>  	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID, 0, 0
>  
> +/**
> + * PCI_VDEVICE_SUB - describe a specific PCI device/subdevice in a short form
> + * @vend: the vendor name
> + * @dev: the 16 bit PCI Device ID
> + * @subdev: the 16 bit PCI Subdevice ID
> + *
> + * Generate the pci_device_id struct layout for the specific PCI
> + * device/subdevice. The subvendor field is set to PCI_ANY_ID. Private data
> + * may follow the output.
> + */
> +#define PCI_VDEVICE_SUB(vend, dev, subdev) \
> +	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
> +	.subvendor = PCI_ANY_ID, .subdevice = subdev, 0, 0

I don't think it's right to specify the subdevice (actually "Subsystem
ID" per spec) without specifying the subvendor ("Subsystem Vendor ID"
in the spec).

Subsystem IDs are assigned by the vendor, so they have to be used in
conjunction with the Subsystem Vendor ID.  See PCIe r6.0, sec
7.5.1.2.3:

  Values for the Subsystem ID are vendor assigned. Subsystem ID
  values, in conjunction with the Subsystem Vendor ID, form a unique
  identifier for the PCI product. Subsystem ID and Device ID values
  are distinct and unrelated to each other, and software should not
  assume any relationship between them.

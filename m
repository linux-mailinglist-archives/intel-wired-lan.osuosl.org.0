Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EEA3A1EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 16:59:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A88386106C;
	Tue, 18 Feb 2025 15:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wEPwe7nopepa; Tue, 18 Feb 2025 15:59:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B1536105D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739894383;
	bh=OuQaFsJQCbdxb0FaqzyEAkoK0s5lDKhJRPklwUQXdHE=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MrFfQrce86Zd390gbrf49cM6DMrPvgNy5BI52LxTgZmdRR2Z0mP269Vmp+2Lt60jx
	 gEcGRHkA6FRjXVQnzRDf1DlBW1LUXJLnpGbJAhUwFAP0dpgjHWnP++3DNsPxaVmQl8
	 qJvnklnKtNd3AJ3mwCC/zWy27X2eVj0mjJuJdSjGdBrbMyM+5y+QcUToRPNkp1QWzB
	 7JOEkn4oke49CShN7xLUKSk1dAr7bgvg8O74dfcQCBjTFQvlu5WbibZr0/fSZHz7eW
	 k6ETPOr3jdQ4O0MKS9HqqjGSvGgybGbQZmyE7tG/1yxo0FtgNiIhuXmTULprPI7lmw
	 8gjX261v6cbWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B1536105D;
	Tue, 18 Feb 2025 15:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 184D9C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 15:59:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0F6B80ED4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 15:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OqHPse961z8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 15:59:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE0D280E30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE0D280E30
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE0D280E30
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 15:59:37 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C161561E6479A;
 Tue, 18 Feb 2025 16:59:19 +0100 (CET)
Message-ID: <42adcd29-3433-4e38-a28e-7f00dac328aa@molgen.mpg.de>
Date: Tue, 18 Feb 2025 16:59:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: [Intel-wired-lan] e1000e: How to set parameters using sysfs?
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

Dear Linux folks,


The driver e1000e has several parameters [1]:

     $ modinfo e1000e
     filename: 
/lib/modules/6.6.35.mx64.477/kernel/drivers/net/ethernet/intel/e1000e/e1000e.ko
     […]
     alias:          pci:v00008086d0000105Esv*sd*bc*sc*i*
     depends:
     retpoline:      Y
     intree:         Y
     name:           e1000e
     vermagic:       6.6.35.mx64.477 SMP preempt mod_unload modversions
     parm:           debug:Debug level (0=none,...,16=all) (int)
     parm:           copybreak:Maximum size of packet that is copied to 
a new buffer on receive (uint)
     parm:           TxIntDelay:Transmit Interrupt Delay (array of int)
     parm:           TxAbsIntDelay:Transmit Absolute Interrupt Delay 
(array of int)
     parm:           RxIntDelay:Receive Interrupt Delay (array of int)
     parm:           RxAbsIntDelay:Receive Absolute Interrupt Delay 
(array of int)
     parm:           InterruptThrottleRate:Interrupt Throttling Rate 
(array of int)
     parm:           IntMode:Interrupt Mode (array of int)
     parm:           SmartPowerDownEnable:Enable PHY smart power down 
(array of int)
     parm:           KumeranLockLoss:Enable Kumeran lock loss workaround 
(array of int)
     parm:           WriteProtectNVM:Write-protect NVM [WARNING: 
disabling this can lead to corrupted NVM] (array of int)
     parm:           CrcStripping:Enable CRC Stripping, disable if your 
BMC needs the CRC (array of int)

Unfortunately, only `copybreak` seems to be exposed via sysfs:

     $ ls /sys/module/e1000e/parameters/
     copybreak

Adding `e1000e.debug=16` to the Linux command line in GRUB also does not 
seem to help – at least no additional messages are logged by Linux.

The StackExchange thread *Debugging why NIC link comes up/down 
constantly* [2] makes the same observations. Regarding the reason, 
LinuxQuestions.org has the answer [3], that the permissions are set to 
0, so the parameters are not exposed:

 From `drivers/net/ethernet/intel/e1000e/param.c`:

```
/* All parameters are treated the same, as an integer array of values.
  * This macro just reduces the need to repeat the same declaration code
  * over and over (plus this helps to avoid typo bugs).
  */
#define E1000_PARAM_INIT { [0 ... E1000_MAX_NIC] = OPTION_UNSET }
#define E1000_PARAM(X, desc)                                    \
         static int X[E1000_MAX_NIC+1] = E1000_PARAM_INIT;       \
         static unsigned int num_##X;                            \
         module_param_array_named(X, X, int, &num_##X, 0);       \
         MODULE_PARM_DESC(X, desc);
[…]

and from `drivers/net/ethernet/intel/e1000e/netdev.c`:

     static int debug = -1;
     module_param(debug, int, 0);
     MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");

Could you please share the reason, why these are hidden from sysfs, not 
allowing them to be changed at runtime?


Kind regards,

Paul


[1]: 
https://www.kernel.org/doc/html/latest/networking/device_drivers/ethernet/intel/e1000.html#command-line-parameters
[2]: 
https://unix.stackexchange.com/questions/662578/debugging-why-nic-link-comes-up-down-constantly
[3]: https://www.linuxquestions.org/questions/showthread.php?p=6305802

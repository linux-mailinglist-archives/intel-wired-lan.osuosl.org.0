Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 458039F6EE9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 21:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D96236175E;
	Wed, 18 Dec 2024 20:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RQN38VScJK7U; Wed, 18 Dec 2024 20:27:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CB256174B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734553653;
	bh=e/uH+n8j2I6GNEmMjwynOkpoFF0HMYN5bGjgvrUgCSU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S6c7MphV8C1mtUEKTRdruGtUQW3LrMDiu9XeIcGv+m6BSMwOk5p+3ejvPJTpJ92mu
	 hshaczPrKRFiXqCBC8QNAd07pGHCvOZWQ/caMFn8Ju1AtvBl6KNAVnPTHKDfzsJNh0
	 Ue4shO3fhDE6ZEzvBbVuhIuZhPhIzCmS1U/PBjQ4W+LNAeB6lop3fXCcGbbHCp2ZEl
	 on1ahCN6LoRliMtuxISBMDtisHbGxNOSu240Fu43Cs883EJ0oKG3OHJud5u0Qv57UF
	 hOS0ggdmr/ypoo4NA3lzSXHFQPIZWELTU7kzp+dQuu/h2ZUF29B7U+Zm3y6UDvs9tp
	 kDirIw/8Ek2VA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CB256174B;
	Wed, 18 Dec 2024 20:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3435FE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 805D141A9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:27:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VQ-VyJrjOlV3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 20:27:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1533241A8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1533241A8E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1533241A8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:27:28 +0000 (UTC)
X-CSE-ConnectionGUID: xk94C3G7SNiVddVhuZ4mRg==
X-CSE-MsgGUID: 8DfmHE59Q76ovDNwSppmTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34770576"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="34770576"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 12:27:28 -0800
X-CSE-ConnectionGUID: s5ZeKC7aQVeanR0AyDa2Tg==
X-CSE-MsgGUID: TbDhLILxRZaf9ieNIMCZGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98371568"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 18 Dec 2024 12:27:24 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tO0dd-000GcE-2z;
 Wed, 18 Dec 2024 20:27:21 +0000
Date: Thu, 19 Dec 2024 04:27:17 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202412190454.nwvp3hU2-lkp@intel.com>
References: <20241218165843.744647-5-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218165843.744647-5-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734553649; x=1766089649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=seDFSGPkM0L4X+D2x5te//8MHP/bA4Pl6AT03WkU9ZM=;
 b=ZU324MOF/O0MHWpvVA6DlEit+gQzA/kQksHkL9Vkm5oPS/tRqH3Dazpi
 duWVtoXV23vPjuXwo9B5n73GZp9+X0/Orf7pmQRm9OVk9kAwGw4iFK3gM
 yJdrxL+uUoS7JBY9uOpmvz62iYEWRaL+Gv5naghXJpIeiF9YOTQqQhhLa
 IU3hWdDLH4xyIZdiHKjJ2R31UjclaEIZ0EcS93Q6f+EQZPXdktL6HN0ya
 VzYXfbYgPyhgZf4HqXbtiOqv4cheLgFSM1D08A3HpV2BEHPFUSE60amRV
 IY13tUI1SiyJOhllKnmgX7qCdmKeEdAhITXmFgJp642zgH+AQxQvOarl0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZU324MOF
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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

Hi Ahmed,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-napi-add-irq_flags-to-napi-struct/20241219-010125
base:   net-next/main
patch link:    https://lore.kernel.org/r/20241218165843.744647-5-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU affinity to napi->config
config: riscv-randconfig-001-20241219 (https://download.01.org/0day-ci/archive/20241219/202412190454.nwvp3hU2-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241219/202412190454.nwvp3hU2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412190454.nwvp3hU2-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> net/core/dev.c:6755:7: warning: variable 'glue_created' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
                   if (rc) {
                       ^~
   net/core/dev.c:6766:7: note: uninitialized use occurs here
           if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
                ^~~~~~~~~~~~
   net/core/dev.c:6755:3: note: remove the 'if' if its condition is always false
                   if (rc) {
                   ^~~~~~~~~
>> net/core/dev.c:6752:6: warning: variable 'glue_created' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/core/dev.c:6766:7: note: uninitialized use occurs here
           if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
                ^~~~~~~~~~~~
   net/core/dev.c:6752:2: note: remove the 'if' if its condition is always true
           if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/core/dev.c:6752:6: warning: variable 'glue_created' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
           if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
               ^~~~~~~~~~~~~~~~~~~~~~
   net/core/dev.c:6766:7: note: uninitialized use occurs here
           if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
                ^~~~~~~~~~~~
   net/core/dev.c:6752:6: note: remove the '&&' if its condition is always true
           if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   net/core/dev.c:6745:19: note: initialize the variable 'glue_created' to silence this warning
           bool glue_created;
                            ^
                             = 0
   net/core/dev.c:4176:1: warning: unused function 'sch_handle_ingress' [-Wunused-function]
   sch_handle_ingress(struct sk_buff *skb, struct packet_type **pt_prev, int *ret,
   ^
   net/core/dev.c:4183:1: warning: unused function 'sch_handle_egress' [-Wunused-function]
   sch_handle_egress(struct sk_buff *skb, int *ret, struct net_device *dev)
   ^
   net/core/dev.c:5440:19: warning: unused function 'nf_ingress' [-Wunused-function]
   static inline int nf_ingress(struct sk_buff *skb, struct packet_type **pt_prev,
                     ^
   6 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FB_IOMEM_HELPERS
   Depends on [n]: HAS_IOMEM [=y] && FB_CORE [=n]
   Selected by [m]:
   - DRM_XE_DISPLAY [=y] && HAS_IOMEM [=y] && DRM [=m] && DRM_XE [=m] && DRM_XE [=m]=m [=m] && HAS_IOPORT [=y]


vim +6755 net/core/dev.c

8e5191fb19bffce Ahmed Zaki 2024-12-18  6741  
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6742  void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long flags)
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6743  {
8e5191fb19bffce Ahmed Zaki 2024-12-18  6744  	struct irq_glue *glue = NULL;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6745  	bool glue_created;
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6746  	int  rc;
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6747  
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6748  	napi->irq = irq;
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6749  	napi->irq_flags = flags;
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6750  
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6751  #ifdef CONFIG_RFS_ACCEL
a274d2669a73ef7 Ahmed Zaki 2024-12-18 @6752  	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
8e5191fb19bffce Ahmed Zaki 2024-12-18  6753  		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq, napi,
8e5191fb19bffce Ahmed Zaki 2024-12-18  6754  				      netif_irq_cpu_rmap_notify);
a274d2669a73ef7 Ahmed Zaki 2024-12-18 @6755  		if (rc) {
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6756  			netdev_warn(napi->dev, "Unable to update ARFS map (%d).\n",
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6757  				    rc);
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6758  			free_irq_cpu_rmap(napi->dev->rx_cpu_rmap);
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6759  			napi->dev->rx_cpu_rmap = NULL;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6760  		} else {
8e5191fb19bffce Ahmed Zaki 2024-12-18  6761  			glue_created = true;
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6762  		}
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6763  	}
a274d2669a73ef7 Ahmed Zaki 2024-12-18  6764  #endif
8e5191fb19bffce Ahmed Zaki 2024-12-18  6765  
8e5191fb19bffce Ahmed Zaki 2024-12-18  6766  	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
8e5191fb19bffce Ahmed Zaki 2024-12-18  6767  		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
8e5191fb19bffce Ahmed Zaki 2024-12-18  6768  		if (!glue)
8e5191fb19bffce Ahmed Zaki 2024-12-18  6769  			return;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6770  		glue->notify.notify = netif_irq_cpu_rmap_notify;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6771  		glue->notify.release = netif_napi_affinity_release;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6772  		glue->data = napi;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6773  		glue->rmap = NULL;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6774  		napi->irq_flags |= NAPIF_IRQ_NORMAP;
8e5191fb19bffce Ahmed Zaki 2024-12-18  6775  	}
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6776  }
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6777  EXPORT_SYMBOL(netif_napi_set_irq);
001dc6db21f4bfe Ahmed Zaki 2024-12-18  6778  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

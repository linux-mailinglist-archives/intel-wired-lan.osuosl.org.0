Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F67A061D8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 17:27:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 162C880A97;
	Wed,  8 Jan 2025 16:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AjCbl9ssZZFA; Wed,  8 Jan 2025 16:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AE3580AF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736353675;
	bh=OFidydZANmUnYqJxaMgyelQX/YPkRJwD7Y2IK9TnJl0=;
	h=To:Cc:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e2u+WYdk6E9n2ruqfmxutoS7CxXweiDfKzq828hfvhGbpdRJrZo/E/4RKGoOXbFiM
	 WnfW278LHPHszPXUw2sw+7139R19sIzJyXTpQkNyth8HMu6V8+3bsZmujm+sQkwJms
	 27mY6rlyQQeKfAhwEe8k1GxgxC1K85CZbQfHmlFHL23LNY1cEuWj/kK6qd5OzUKV7W
	 K0ZuIg9SnS3Zzn/azing/6l6QE9IWrUhSQC79miTsOldpLG70WnLPIA7+hndefX2Lz
	 uzgXuu+lvPTb3VORSjw7I8WG9qJzxRAfJEduRsf1muGhqmrNEOAtHaQIFy76+UZQsb
	 3YhxRtnqsg/Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AE3580AF5;
	Wed,  8 Jan 2025 16:27:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DCAA77AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7DAA80D94
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:18:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5XYA0S1-cSv6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 03:18:37 +0000 (UTC)
X-Greylist: delayed 528 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 08 Jan 2025 03:18:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 030A680D92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 030A680D92
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=114.242.206.163;
 helo=mail.loongson.cn; envelope-from=zhanghongchen@loongson.cn;
 receiver=<UNKNOWN> 
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp1.osuosl.org (Postfix) with ESMTP id 030A680D92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 03:18:35 +0000 (UTC)
Received: from loongson.cn (unknown [111.207.111.194])
 by gateway (Coremail) with SMTP id _____8Axfaxx7H1nc8NfAA--.2629S3;
 Wed, 08 Jan 2025 11:09:38 +0800 (CST)
Received: from [10.180.13.176] (unknown [111.207.111.194])
 by front1 (Coremail) with SMTP id qMiowMDx7sVv7H1nJRgZAA--.31862S3;
 Wed, 08 Jan 2025 11:09:36 +0800 (CST)
To: Michal Schmidt <mschmidt@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Daniel Machon <daniel.machon@microchip.com>
References: <20240131115823.541317-1-mschmidt@redhat.com>
From: Hongchen Zhang <zhanghongchen@loongson.cn>
Message-ID: <e6f59bda-9de8-3d30-3f37-3ab1ec047715@loongson.cn>
Date: Wed, 8 Jan 2025 11:09:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux loongarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20240131115823.541317-1-mschmidt@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CM-TRANSID: qMiowMDx7sVv7H1nJRgZAA--.31862S3
X-CM-SenderInfo: x2kd0w5krqwupkhqwqxorr0wxvrqhubq/1tbiAgEQB2d9tVgEdgABsQ
X-Coremail-Antispam: 1Uk129KBj93XoW3GrWUXw48GrW8Cry5Gr1UXFc_yoW7AF4UpF
 WUKF1qgr48Aw4UZayxWw1jgry3Gw1qvFWDJ3W2y3s5AF4UXr1jyr1xCayUAryDG395uF47
 ta12vw1kt3WDAabCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUPFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v2
 6F4UJVW0owAaw2AFwI0_Jrv_JF1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0c
 Ia020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JF0_
 Jw1lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrw
 CYjI0SjxkI62AI1cAE67vIY487MxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48J
 MxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI
 0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y
 0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxV
 WUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1l
 IxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxU2eT5DUUUU
X-Mailman-Approved-At: Wed, 08 Jan 2025 16:27:54 +0000
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=loongson.cn
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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

Hi Michal,
On 2024/1/31 pm 7:58, Michal Schmidt wrote:
> new_rcp->recipe_bitmap was written to as if it were an aligned bitmap.
> It is an 8-byte array, but aligned only to 4.
> Use put_unaligned to set its value.
> 
> Additionally, values in ice commands are typically in little-endian.
> I assume the recipe bitmap should be too, so use the *_le64 conversion.
> I don't have a big-endian system with ice to test this.
> 
> I tested that the driver does not crash when probing on aarch64 anymore,
> which is good enough for me. I don't know if the LAG feature actually
> works.
> 
> This is what the crash looked like without the fix:
> [   17.599009] Unable to handle kernel paging request at virtual address ffff07ff9c6dc004
> [   17.599011] Mem abort info:
> [   17.599011]   ESR = 0x0000000096000021
> [   17.599012]   EC = 0x25: DABT (current EL), IL = 32 bits
> [   17.599013]   SET = 0, FnV = 0
> [   17.599014]   EA = 0, S1PTW = 0
> [   17.599014]   FSC = 0x21: alignment fault
> [   17.599015] Data abort info:
> [   17.599016]   ISV = 0, ISS = 0x00000021, ISS2 = 0x00000000
> [   17.599016]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
> [   17.599017]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
> [   17.599019] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000080dd6bd0000
> [   17.599020] [ffff07ff9c6dc004] pgd=1800083fffacf003, p4d=1800083fffacf003, pud=1800083ffface003, pmd=1800083fff9ea003, pte=006808001c6dcf07
> [   17.599025] Internal error: Oops: 0000000096000021 [#1] SMP
> [   17.599027] Modules linked in: crct10dif_ce ghash_ce sha2_ce sha256_arm64 mlx5_core sha1_ce sbsa_gwdt ice(+) nvme nvme_core mlxfw igb tls nvme_common psample i2c_algo_bit gnss pci_hyperv_intf i2c_designware_platform i2c_designware_core xgene_hwmon dm_mirror dm_region_hash dm_log dm_mod
> [   17.599043] CPU: 0 PID: 18 Comm: kworker/0:1 Not tainted 5.14.0-407.el9.aarch64 #1
> [   17.599044] Hardware name: GIGABYTE R272-P31-00/MP32-AR1-00, BIOS F31L (SCP: 2.10.20220531) 09/29/2022
> [   17.599046] Workqueue: events work_for_cpu_fn
> [   17.599051] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> [   17.599053] pc : ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
> [   17.599091] lr : ice_create_lag_recipe.constprop.0+0x54/0x11c [ice]
> [   17.599121] sp : ffff8000084a3c50
> [   17.599122] x29: ffff8000084a3c50 x28: ffffabc4a6790f00 x27: ffffabc4a6200fa0
> [   17.599124] x26: ffff07ff809e5c34 x25: ffff083e5f41980d x24: ffff07ff8610a0c0
> [   17.599126] x23: 0000000000000000 x22: ffff07ff9fe894c0 x21: ffff07ffb771a460
> [   17.599128] x20: ffff07ff9c6dc000 x19: 0000000000000000 x18: 0000000000000014
> [   17.599130] x17: 00000000c3142fa2 x16: 000000007e77e163 x15: 0000000018c66856
> [   17.599132] x14: 00000000b8afd426 x13: 000000007e8b3b19 x12: 000000004a34fdf7
> [   17.599134] x11: 00000000a7cb2fcc x10: 00000000ffffff8a x9 : 0000000000000000
> [   17.599136] x8 : 0000002000000005 x7 : 0000000000000001 x6 : ffffabc487a054d8
> [   17.599138] x5 : ffff07ff9c6dc004 x4 : 000000000000000a x3 : 0000000000000000
> [   17.599140] x2 : 0000000000000000 x1 : 0000000000000400 x0 : ffff07ff9c6dc004
> [   17.599142] Call trace:
> [   17.599143]  ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
> [   17.599172]  ice_init_lag+0xcc/0x22c [ice]
> [   17.599201]  ice_init_features+0x160/0x2b4 [ice]
> [   17.599230]  ice_probe+0x2d0/0x30c [ice]
> [   17.599258]  local_pci_probe+0x58/0xb0
> [   17.599262]  work_for_cpu_fn+0x20/0x30
> [   17.599264]  process_one_work+0x1e4/0x4c0
> [   17.599266]  worker_thread+0x220/0x450
> [   17.599268]  kthread+0xe8/0xf4
> [   17.599270]  ret_from_fork+0x10/0x20
> [   17.599273] Code: 380044a4 f800429f 8b000ca0 d503201f (f821301f)
> [   17.599274] ---[ end trace 168d79e2ecf9f7e3 ]---
> [   17.599275] Kernel panic - not syncing: Oops: Fatal exception
> [   17.893321] SMP: stopping secondary CPUs
> [   17.897374] Kernel Offset: 0x2bc49c400000 from 0xffff800008000000
> [   17.903453] PHYS_OFFSET: 0x80000000
> [   17.906928] CPU features: 0x0,00000001,70028143,1041720b
> [   17.912226] Memory Limit: none
> [   17.915268] ---[ end Kernel panic - not syncing: Oops: Fatal exception ]---
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 2a25323105e5..d4848f6fe919 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
>   	new_rcp->content.act_ctrl_fwd_priority = prio;
>   	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>   	new_rcp->recipe_indx = *rid;
> -	bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
> -		    ICE_MAX_NUM_RECIPES);
> -	set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
> +	put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>   
>   	err = ice_aq_add_recipe(hw, new_rcp, 1, NULL);
>   	if (err)
> 
I encountered the same problem on a LoongArch LS3C6000 machine. Can this 
patch be merged now?

-- 
Best Regards
Hongchen Zhang


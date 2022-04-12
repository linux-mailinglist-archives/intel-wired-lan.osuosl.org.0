Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9F34FCF0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 07:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA42060F32;
	Tue, 12 Apr 2022 05:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoYyEqV01R86; Tue, 12 Apr 2022 05:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABE3F60F21;
	Tue, 12 Apr 2022 05:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3A3B1BF362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90DD883DF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0p6wV654Z4D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 05:44:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D63E8827DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:44:22 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef95.dynamic.kabel-deutschland.de
 [95.90.239.149])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F2A0161EA1929;
 Tue, 12 Apr 2022 07:44:20 +0200 (CEST)
Message-ID: <4a3aca36-3dd4-51fb-660c-42adb306bd0e@molgen.mpg.de>
Date: Tue, 12 Apr 2022 07:44:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220411232907.1022602-1-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/6] minor cleanups for ice
 virtualization
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jacob,


Am 12.04.22 um 01:29 schrieb Jacob Keller:
> This series contains a few minor fix ups for virtualization files. Mainly
> this includes fixes for function header comments and minor wording changes.
> 
> The only larger change is a patch which adds NULL checks to ice_get_vf_vsi.
> This was done in order to prevent static analysis tools from complaining
> that a NULL value could be dereferenced. Flows where an error is not
> feasible have a WARN_ON check added. This change enhances the robustness of
> the driver by avoiding a panic in the event that a VF does not have a valid
> VSI.
> 
> Jacob Keller (6):
>    ice: add newline to dev_dbg in ice_vf_fdir_dump_info
>    ice: always check VF VSI pointer values
>    ice: remove return value comment for ice_reset_all_vfs
>    ice: fix wording in comment for ice_reset_vf
>    ice: add a function comment for ice_cfg_mac_antispoof
>    ice: remove period on argument description in ice_for_each_vf
> 
>   drivers/net/ethernet/intel/ice/ice_devlink.c  |  5 ++-
>   drivers/net/ethernet/intel/ice/ice_repr.c     |  7 ++-
>   drivers/net/ethernet/intel/ice/ice_sriov.c    | 32 ++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 43 ++++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 +-
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |  5 +++
>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  9 +++-
>   7 files changed, 91 insertions(+), 14 deletions(-)

Besides the nitpicks, the whole series looks good. Thank you very much 
for doing such cleanup work.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
